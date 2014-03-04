class DrinksController < ApplicationController
  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)
    @drink.save

    redirect_to drinks_path
  end

  def index
    @drinks = Drink.all
  end

private
  def drink_params
    params.require(:drink).permit(:name, :booze)
  end
end
