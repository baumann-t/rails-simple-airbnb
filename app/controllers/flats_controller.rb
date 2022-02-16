class FlatsController < ApplicationController
  before_action :set_flat, only: [:show]

  def index
    @flats = Flat.all
  end

  def show;
    @path = File.join(File.dirname(__FILE__), '../../app/assets/images/')
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create!(params_flat)
    redirect_to flat_path(@flat)
  end

  private

  def params_flat
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
