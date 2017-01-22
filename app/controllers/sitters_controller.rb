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
      flash[:success] = 'Successfully created account!'
      redirect_to '/home'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup/sitters'
    end
  end 

  def show
    @sitter = Sitter.find_by(id:params[:id])

    @reviews=@sitter.reviews
    @reservations = @sitter.reservations
    render 'show.html.erb'
  end 

end
