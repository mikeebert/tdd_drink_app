class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    @guest.save

    redirect_to guests_path
  end

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @drinks = Drink.all
  end

private
  def guest_params
    params.require(:guest).permit(:first_name, :last_name)
  end
end
