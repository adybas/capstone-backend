class AddInfoToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :vegetarian, :string
    add_column :recipes, :vegan, :string
    add_column :recipes, :glutenFree, :string
    add_column :recipes, :dairyFree, :string
    add_column :recipes, :weightWatcherSmartPoints, :integer
    add_column :recipes, :lowFodmap, :boolean
    add_column :recipes, :preparationMinutes, :integer
    add_column :recipes, :cookingMinutes, :integer
    add_column :recipes, :sourceUrl, :string
    add_column :recipes, :spoonacularSourceUrl, :string
    add_column :recipes, :spoonacularScore, :integer
    add_column :recipes, :creditsText, :string
    add_column :recipes, :sourceName, :string
    add_column :recipes, :title, :string
    add_column :recipes, :db_id, :integer
    add_column :recipes, :servings, :integer
    add_column :recipes, :readyInMinutes, :integer
    add_column :recipes, :image, :string
    add_column :recipes, :summary, :string
    add_column :recipes, :instructions, :string
  end
end

# "diets": [
#     "gluten free",
#     "dairy free",
#     "paleolithic",
#     "lacto ovo vegetarian",
#     "primal",
#     "vegan"
# ]