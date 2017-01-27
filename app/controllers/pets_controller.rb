class PetsController < ApplicationController
	def index
		@pets=Pet.all
	end 

	def new
		render 'new.html.erb'
	end 

	def create
		@owner=current_owner
		pet=Pet.new(
			name: params[:name],
			species: params[:species],
			bio: params[:bio],
			age: params[:age],
			image: params[:image],
			owner_id: current_owner.id
			)
	if pet.save
      flash[:success] = 'You added a new pet!'
      redirect_to "/owners/#{@owner.id}"
    else
      flash[:warning] = 'You did not add a pet'
      redirect_to '/pets/new'
    end
	end 
end
