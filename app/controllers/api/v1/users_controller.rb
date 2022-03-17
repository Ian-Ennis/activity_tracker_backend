class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create 
        puts "in users_controller_create"
        user = User.create(user_params)
        if user.valid?
            puts "user is valid"
            token = encode_token(user_id: user.id)
            render json: {user: UserSerializer.new(user), jwt: token}, status: :created
        else
            puts "user is not valid"
            render json: {error: "Could not create user!"}, status: :unprocessable_entity
        end
    end

    def profile
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
