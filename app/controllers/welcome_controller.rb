class WelcomeController < ApplicationController
  def index
  	@item = FoodItem.all
  	@item1 = FoodItem.where(cuisine: "Western").sample
  	@item2 = FoodItem.where(cuisine: "Adventurous").sample
  	@item3 = FoodItem.where(cuisine: "Asian").sample
 	@delivery = Time.now + (2700)		
		if params[:admin] == "true"
			render 'index'
		else
			render 'under_construction'

	end
	end
end