class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews
    end

    def create
        review = Review.new(rating: params[:rating], comment: params[:comment], bar_id: params[:bar_id], user_id: params[:user_id])
        if review.save
            render json: review
        else
            render json: {errors: review.errors.full_messages}
        end
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def update
        
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
    end

end
