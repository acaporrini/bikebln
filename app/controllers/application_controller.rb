class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  protected

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to products_path, :alert => exception.message
  end
  def after_sign_in_path_for(resource)
    # return the path based on resource
    :static_pages_index
  end
end
