class ReservationsController < ApplicationController
	skip_before_action :verify_authenticity_token
  def index
  end
    def  new
    	@sitter=Sitter.find_by(id:params[:sitter_id])
    	render 'new.html.erb'
    end 

	def create 
		@sitter=Sitter.find_by(id:params[:sitter_id])
		reservation=Reservation.new(
			start_date: params[:start_date],
			end_date: params[:end_date],
			start_time: params[:start_time],
			end_time: params[:end_time],
			host: params[:host],
			price: params[:price],
			owner_id: current_owner.id,
			sitter_id: @sitter.id,
			pet_id: params[:pet]["pet_id"]
			)
		p "e"*200
		p @sitter.id

			if reservation.save
		      flash[:success] = 'You have successfully made a reservation'
		    else
		      flash[:warning] = 'Reservation not made!'
		    end
		      redirect_to "/reservations?sitter_id=#{@sitter.id}"
	end


	def update
		p "hellooooo"
		@sitter=Sitter.find(current_sitter.id)
		p @sitter.id
		@reservation=Reservation.find_by(id:params[:id])
		p "o"*200
		p @confirmed_reservation=Reservation.where(sitter_id: @sitter.id).where(confirmed:"Yes").last
	# 	@reservations=@sitter.reservations
	   #   @reservation.update(
			 # confirmed:params[:confirmed] || params[:not_confirmed]
			 # 	)
			 @confirmedornot=params[:confirmed] || params[:not_confirmed]
			
			 p "thankyouuuuuu"
			 p @confirmedornot
			 p params[:confirmed]
			 p params[:not_confirmed] 
			 p @reservation.errors.full_messages
			 p "byeeeeeeee"
			 	
            if params[:confirmed] == "Yes"
			 	flash[:success] ="You confirmed a reservation"
			 	 @reservation.update(confirmed: params[:confirmed])
			 	# redirect_to "/reservations/#{@reservation.id}"
			 	redirect_to "/sitters/#{@sitter.id}"
			 else
			 	flash[:failure]="You didn't confirm your reservation"
			 	 @reservation.update(confirmed: params[:not_confirmed])
			 	# redirect_to "/reservations/#{@reservation.id}"
			 		redirect_to "/sitters/#{@sitter.id}"

		     end
				# redirect_to "/sitters/#{@sitter.id}" 
		
			
	end 

	def show
    	@sitter=Sitter.find(current_sitter)
    	@confirmed_reservation=Reservation.where(sitter_id: @sitter.id).where(confirmed:params[:confirmed]).last
    	
    	p @confirmed_reservation

    end 

end
