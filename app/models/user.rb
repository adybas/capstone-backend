class User < ApplicationRecord
    has_many :user_ingredients
    has_many :ingredients, through: :user_ingredients

    has_many :user_recipes
    has_many :recipes, through: :user_recipes

    has_many :user_diets
    has_many :diets, through: :user_diets
end
