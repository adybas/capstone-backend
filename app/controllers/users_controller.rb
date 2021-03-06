class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(username: params[:username])
        render json: { user: user, favorites: user.recipes }
    end

    def create
        user = User.create(first_name: params["first_name"], last_name: params["last_name"], username: params["username"])
        if user.valid? 
            render json: { user: user, favorites: [] }
        else   
             render json: {
               message:   user.errors.full_messages
             }
        end
    end
end
