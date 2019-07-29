class AuthController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = encode_token(user.id)
            render json: {user: user, token: token}
        else
            render json: {errors: "NOT CORRECT"}
        end
    end
    def auto_login
        if session_user
            render json: session_user
        else
            render json: {errors: "User has never logged in before"}
        end
    end

end