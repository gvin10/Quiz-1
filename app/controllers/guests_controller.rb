class GuestsController < ApplicationController
  def guest
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    Guest.create(guest_params)
    redirect_to root_path
  end


  private

  def guest_params
    params.require(:guest).permit(:name, :email)
  end

end
