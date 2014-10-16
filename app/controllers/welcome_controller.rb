class WelcomeController < ApplicationController
  def index
 	@delivery = Time.now + (2700)		
		if params[:admin] == "true"
			render 'index'
		else
			render 'under_construction'
	end
	end
end