class CarsController < ApplicationController
  protect_from_forgery with: :exception, unless: -> { request.format.json? }
  def index
    @cars = Car.all
    render :index 
  end

  def create
    @car = Car.create(
      year: params[:year],
      make: params[:make],
      model: params[:model],
      image_url: params[:image_url]
    )
    render :show
  end

end

