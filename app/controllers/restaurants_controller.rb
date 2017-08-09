class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:edit, :show, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_rest)
    if @restaurant.save
      redirect_to restaurant_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @restaurant.update(params_rest)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurant_path
  end

  private

  def params_rest
    params.require(:restaurant).permit(:name,
                                       :address,
                                       :phone,
                                       :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
