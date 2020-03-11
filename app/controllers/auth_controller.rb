class AuthController < ApplicationController

    def fake_login
        user=User.find_by(name: params["user"])
        render json: user
    end

    def create
        user = User.create(params.require(:user).permit!)
        render json: user
    end
end