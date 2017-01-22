class OwnersController < ApplicationController
	
	# before_action :authenticate_user!
	def index 
		@owners=Owner.all
		@pet=Pet.find_by(owner_id: 1)
	end 

	
    
    def  new
    	render 'new.html.erb'
    end 

	def create 
		owner=Owner.new(
			first_name: params[:first_name],
			last_name: params[:last_name],
			address: params[:address],
			city: params[:city],
			state: params[:state],
			zipcode: params[:zipcode],
			phone_number: params[:phone_number],
			username: params[:username],
	        email: params[:email],
	        password: params[:password],
	        password_confirmation: params[:password_confirmation]
			)
	if owner.save
      session[:owner_id] = owner.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/home'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup/owners'
    end
end

	def show
		@owner=Owner.find_by(id: params["id"])
		@pets=Pet.where(owner_id: @owner.id)
		@reservations=@owner.reservations 
		render 'show.html.erb'
	end 
end
