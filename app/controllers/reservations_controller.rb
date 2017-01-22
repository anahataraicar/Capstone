class ReservationsController < ApplicationController
	skip_before_action :verify_authenticity_token
  def index
  end
    def  new
    	@sitter=Sitter.find_by(id:params[:id])
    	render 'new.html.erb'
    end 

	def create 
		
		reservation=Reservation.new(
			start_date: params[:start_date],
			end_date: params[:end_date],
			start_time: params[:start_time],
			end_time: params[:end_time],
			host: params[:host],
			price: params[:price],
			owner_id: current_owner.id,
			sitter_id: params[:sitter_id],
			pet_id: params[:pet]["pet_id"]
			)
			if reservation.save
		      flash[:success] = 'You have successfully made a reservation'
		    else
		      flash[:warning] = 'Reservation not made!'
		    end
		      redirect_to '/reservations'
	end


	def update
		p "hellooooo"
		@sitter=Sitter.find(current_sitter.id)
		p @sitter.id
		@reservation=Reservation.find_by(id:params[:id])
	# 	@reservations=@sitter.reservations
	   #   @reservation.update(
			 # confirmed:params[:confirmed] || params[:not_confirmed]
			 # 	)
			 @confirmedornot=params[:confirmed] || params[:not_confirmed]
			 @reservation.update(confirmed: @confirmedornot)
			 p "thankyouuuuuu"
			 p @confirmedornot
			 p params[:confirmed]
			 p params[:not_confirmed] 
			 p @reservation.errors.full_messages
			 p "byeeeeeeee"
			 	
            if params[:confirmed] == "Yes"
			 	flash[:success] ="You confirmed a reservation"
			 	redirect_to "/reservations/#{@reservation.id}"
			 else
			 	flash[:failure]="You didn't confirm your reservation"
		     end
				# redirect_to "/sitters/#{@sitter.id}" 
		
			
	end 

	def show
    	@sitter=Sitter.find(current_sitter)
    	@confirmed_reservation=Reservation.where(sitter_id: @sitter.id).where(confirmed:"Yes").last

    end 

end
