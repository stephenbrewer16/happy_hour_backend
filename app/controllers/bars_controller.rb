class BarsController < ApplicationController
    before_action :set_bar, only: [:show, :update, :destroy]
    def index
        @bars = Bar.all
        render json: @bars
    end

    def create
        
    end

    def show
    render json: @bar
    end

    def update
        
    end

    def destroy
        @bar.destroy
    end

end
private

def set_bar
    @bar = Bar.find(params[:id])
end
