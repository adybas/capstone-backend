class UserRecipesController < ApplicationController    
    def index 
        user_recipes = UserRecipe.all 
        render json: user_recipes
    end 

    def show 
        user_recipe = UserRecipe.find_by(id: params[:id])
        render json: user_recipe
    end 

    def create 
        user_recipe = UserRecipe.find_or_create_by(params.require(:user_recipe).permit!)
        render json: user_recipe
    end 

    def destroy 
        user_recipe = UserRecipe.find_by(user_id: params[:user_id], recipe_id: params[:recipe_id])
        user_recipe.destroy

    end 
end
