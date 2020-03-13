class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.find_or_create_by(first_name: params["first_name"], last_name: params["last_name"], username: params["username"])
        render json: user
    end
end
