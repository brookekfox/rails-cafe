class BeveragesController < ApplicationController

	def index
		@beverages = Beverage.all
	end

	def new
		@beverage = Beverage.new
	end

	def create
		@beverage = Beverage.create(params.require(:beverage).permit(:roast, :quantity, :price, :decaf, :expiration_date, :brew))
		# find the instance of Beverage from the new form (it is :beverage); for this instance of Beverage (:beverage), we permit you to create these parameters and no others
		if @beverage.save
			redirect_to beverages_path #the path is the prefix we want to go to from rake routes
		else
			render 'new' #if the submit isn't successful, rerender the new form
		end
	end
end