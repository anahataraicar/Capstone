class SitterSessionsController < ApplicationController
	def new
    render 'new.html.erb'
  end

  def create
    sitter= Sitter.find_by(email: params[:email])
    if sitter&& sitter.authenticate(params[:password])
      session[:sitter_id] = sitter.id
      flash[:success] = 'Successfully logged in!'
      redirect_to "/sitters/#{sitter.id}"
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/login/sitters'
    end
  end

  def destroy
    session[:sitter_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login/sitters'
  end

end

