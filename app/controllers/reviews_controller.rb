class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
        render json: @reviews
    end

    def create
        
    end

    def show
        @review = Review.find(params[:id])
        render json: @review
    end

    def update
        
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
    end

end
