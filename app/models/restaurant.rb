# app/models/restaurant.rb
class Restaurant < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :pizzas, through: :restaurant_pizzas
end

# app/models/pizza.rb
class Pizza < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas
end

# app/models/restaurant_pizza.rb
class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza

  validates :price, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 30 }
end
