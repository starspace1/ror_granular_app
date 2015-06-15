class RestaurantsController < ApplicationController

  def index
<<<<<<< HEAD
    @restaurants = Restaurant.all
=======
  	@restaurants = Restaurant.all
>>>>>>> 5c8c28d09f6f98515ea17c094e05adab314ca490
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  end

  def edit
  end

  def new
  end
end
