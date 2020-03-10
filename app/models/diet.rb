class Diet < ApplicationRecord
    has_many :user_diets
    has_many :users, through: :user_diets
end
