class ReviewsController < ApplicationController
	def  new
    	@sitter=Sitter.find_by(id:params[:id])
    	render 'new.html.erb'
    end 

	def create 
		p "helloooooooo"
		p current_owner.id

		review=Review.new(
			review: params[:review],
			owner_id: current_owner.id,
			sitter_id: params[:sitter_id]
			)
			if review.save
		      flash[:success] = 'You have successfully added a review'
		    
		    else
		      flash[:warning] = 'Review not added!'
		    end
		      redirect_to '/reviews'
	end
end
