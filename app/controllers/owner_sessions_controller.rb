class OwnerSessionsController < ApplicationController
   def new
    render 'new.html.erb'
  end

  def create
    owner= Owner.find_by(email: params[:email])
    if owner && owner.authenticate(params[:password])
      session[:owner_id] = owner.id
      flash[:success] = 'Successfully logged in!'
      redirect_to "/owners/#{owner.id}"
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/login/owners'
    end
  end

  def destroy
    session[:owner_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login/owners'
  end
end
