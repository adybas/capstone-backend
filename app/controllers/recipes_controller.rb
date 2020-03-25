class RecipesController < ApplicationController
    def index
        recipes = Recipe.all 
        render json: recipes
    end

    def create
        recipe = Recipe.find_or_create_by(vegetarian: params["vegetarian"], vegan: params["vegan"], glutenFree: params["glutenFree"], dairyFree: params["dairyFree"], weightWatcherSmartPoints: params["weightWatcherSmartPoints"], lowFodmap: params["lowFodmap"], preparationMinutes: params["preparationMinutes"], cookingMinutes: params["cookingMinutes"], sourceUrl: params["sourceUrl"], spoonacularSourceUrl: params["spoonacularSourceUrl"], spoonacularScore: params["spoonacularScore"], creditsText: params["creditsText"], sourceName: params["sourceName"], title: params["title"], db_id: params["db_id"], servings: params["servings"], readyInMinutes: params["readyInMinutes"], image: params["image"], summary: params["summary"], instructions: params["instructions"])
        render json: recipe
    end
end

