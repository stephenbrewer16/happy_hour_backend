class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
    def index
        @users = User.all
        render json: @users
    end

    def create
        user = User.new(username: params[:username], password: params[:password], email: params[:email], image: params[:image])
        if user.save
        token = encode_token(user.id)
        render json: {user: user, token: token}
        else 
        render json: {errors: user.errors.full_messages}
        end
    end

    def show
    render json: @user
    end

    def update
        
    end

    def destroy
        @user.destroy
    end

end
private

def set_user
    @user = User.find(params[:id])
end
