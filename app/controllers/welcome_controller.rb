class WelcomeController < ApplicationController
  def index
  	@western_item = FoodItem.where(cuisine: "Western").sample
    @asian_item = FoodItem.where(cuisine: "Asian").sample
    @adventurous_item = FoodItem.where(cuisine: "Adventurous").sample       
 	@delivery = Time.now + (2700)		
		if params[:admin] == "true"
			render 'index'
		else
			render 'under_construction'

	end
	end
end