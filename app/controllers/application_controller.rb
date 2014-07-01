class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :resolve_layout
  private
  def not_authenticated
    redirect_to login_url, :alert => "Primero logueese para llenar la encuesta."
  end

  def resolve_layout
    case action_name
    when "new", "show","edit","create"
      "fusu"
    when "index"
      "application"
    end
   end 
end
