# app/controllers/restaurants_controller.rb
class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :destroy]
  
    def index
      @restaurants = Restaurant.all
      render json: @restaurants, only: [:id, :name, :address]
    end
  
    def show
      if @restaurant
        render json: @restaurant, only: [:id, :name, :address], include: { pizzas: { only: [:id, :name, :ingredients] } }
      else
        render json: { error: 'Restaurant not found' }, status: :not_found
      end
    end
  
    def destroy
      if @restaurant
        @restaurant.restaurant_pizzas.destroy_all
        @restaurant.destroy
        head :no_content
      else
        render json: { error: 'Restaurant not found' }, status: :not_found
      end
    end
  
    private
  
    def set_restaurant
      @restaurant = Restaurant.find_by(id: params[:id])
    end
  end
  
  # app/controllers/pizzas_controller.rb
  class PizzasController < ApplicationController
    def index
      @pizzas = Pizza.all
      render json: @pizzas, only: [:id, :name, :
  