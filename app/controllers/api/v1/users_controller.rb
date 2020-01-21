class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.new(user_params)

        if user.save
            render json: {user: user, token: issue_token({user_id: user.id})}
        else
            render json: {errors: user.e rrors.full_messages}, status: :not_acceptable
        end
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end
