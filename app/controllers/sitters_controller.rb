class SittersController < ApplicationController

  # before_action :authenticate_user!
  def index
  	@sitters=Sitter.all
  if params[:search]
   
    @sitters = Sitter.includes(:pet_types).where(pet_types: { name: params[:search] })
 
  else
    @sitters = Sitter.all.order("created_at DESC")
  end
  render 'index.html.erb'
end

  def new
    @pet_types=PetType.all
  	render 'new.html.erb'
  end 


  def create
  	sitter=Sitter.new(
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
	
    
      if sitter.save
         session[:sitter_id] = sitter.id
         params[:pet_type_ids].each do |pet_type_id|

      sitter_pet_type=SitterPetType.new(
        pet_type_id: pet_type_id,
        sitter_id: sitter.id
        )
   
      sitter_pet_type.save
    end
      flash[:success] = 'Successfully created account!'
      redirect_to '/home'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup/sitters'
    end
  end 

  def show
    @sitter = Sitter.find_by(id:params[:id])
    @owner=Owner.find_by(id:params[:id])

    @reviews=@sitter.reviews
    @confirmed_reservations = @sitter.reservations.where(confirmed:"yes")
    @reservations = @sitter.reservations.where(confirmed:nil)
    render 'show.html.erb'
  end 

end
