class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_owner
    @current_owner ||= Owner.find_by(id: session[:owner_id]) if session[:owner_id]
  end

  helper_method :current_owner

  def authenticate_owner!
    redirect_to '/login' unless current_owner
  end
   def current_sitter
    @current_sitter ||= Sitter.find_by(id: session[:sitter_id]) if session[:sitter_id]
  end

  helper_method :current_sitter

  def authenticate_sitter!
    redirect_to '/login' unless current_sitter
  end
end




