class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_rest)
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
