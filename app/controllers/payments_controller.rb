class PaymentsController < ApplicationController
  def new
  end
  def create
    token = params[:stripeToken]
    @amount = params[:price].to_f * 100
    @email = params[:stripeEmail]
    @product = Product.find(params[:product_id])
    @message = "Congratulations! You have just bought a #{@product.name} for #{ sprintf('%.2f', @amount / 100) } €"
    # Create the charge on Stripe's servers - this will charge the user's card
    #byebug
    begin
      charge = Stripe::Charge.create(
        :amount => @amount.to_i, # amount in cents, again
        :currency => "eur",
        :source => token,
        :description => params[:stripeEmail]
      )
      flash[:notice] = "Thanks for your purchase, you paid #{ sprintf('%.2f', @amount / 100) } €"
      UserMailer.payment_notification(@email, @message).deliver
    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err  = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end
    redirect_to product_path(params[:product_id])
  end

end
