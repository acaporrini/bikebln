require 'rails_helper'

describe ProductsController, type: :controller do 
  describe "POST # products" do
    before do
      @user = User.create(email: "demo@demo.com", password: "12345678")
      @user.confirm
      sign_in @user
    end
    it "create a new product" do 
      expect{ post :create, { product: { name: "aaaa" } } }.to change{Product.count}.by(1)      
    end
  end

  describe "DELETE # products" do
    before do
      @user = User.create(email: "demo@demo.com", password: "12345678")
      @user.confirm
      sign_in @user
      @product = Product.create(name: "bike",description: "cool bycicle",image_url: "bike.jpg",colour: "red",price: "2,99") 
    end
    it "delete an existing product" do    
      expect{ delete :destroy, id: @product.id }.to change{Product.count}.by(-1)      
    end
  end
  describe "UPDATE # products" do
    before do
      @user = User.create(email: "demo@demo.com", password: "12345678")
      @user.confirm
      sign_in @user
      @product = Product.create(name: "bike",description: "cool bycicle",image_url: "bike.jpg",colour: "red",price: "2,99") 
      put :update, id: @product.id, product: { name: "bycicle" }
      @product.reload
    end
    it "update an existing product" do    
      expect( @product.name ).to eq("bycicle")    
    end
  end
  describe "GET #index" do
    before do
      @user = User.create(email: "demo@demo.com", password: "12345678")
      @user.confirm
      sign_in @user
    end
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
  describe "GET #show" do
    before do
      @user = User.create(email: "demo@demo.com", password: "12345678")
      @user.confirm
      sign_in @user
      @product = Product.create(name: "bike",description: "cool bycicle",image_url: "bike.jpg",colour: "red",price: "2,99") 
    end
    it "responds successfully with an HTTP 200 status code" do
      get :show, id: @product.id
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :show, id: @product.id
      expect(response).to render_template("show")
    end
  end
  # describe "UPDATE # products" do
  #   before do
  #     @user = User.create(email: "demo@demo.com", password: "12345678")
  #     @user.confirm
  #     sign_in @user
  #     @product = Product.create(name: "bike",description: "cool bycicle",image_url: "bike.jpg",colour: "red",price: "2,99") 
  #   end
  #   it "update an existing product" do    
  #     expect{ put :update, id: @product.id, product: { name: "bycicle" }  }.to change{@product.name}     
  #   end
  # end
end