class RestaurantsController < ApplicationController
    def index
      @restaurants = Restaurant.all
      render json: @restaurants.as_json(only: [:id, :name, :address])
    end
  
    def show
      @restaurant = Restaurant.find(params[:id])
      render json: @restaurant.as_json(
        only: [:id, :name, :address],
        include: { pizzas: { only: [:id, :name, :ingredients] } }
      )
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  
    def destroy
      @restaurant = Restaurant.find(params[:id])
      @restaurant.destroy
      head :no_content
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  end
  