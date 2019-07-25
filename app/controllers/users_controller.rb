class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
    def index
        @users = User.all
        render json: @users
    end

    def create
        
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
