class WelcomeController < ApplicationController
  def index
  	@item = FoodItem.find_by_name("Crab Yellow Curry")
 	@delivery = Time.now + (2700)		
		if params[:admin] == "true"
			render 'index'
		else
			render 'under_construction'

	end
	end
end