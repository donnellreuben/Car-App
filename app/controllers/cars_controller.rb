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

  def show
    @car = Car.find(params[:id]) 
    #I like this code more, easier to remember. Find_by is more flexible as it allows you to specify the exact year, make or model
    render :show
  end

  def update
    @car = Car.find(params[:id])
    @car.year = params[:year]
    @car.make = params[:make]
    @car.model = params[:model]
    @car.image_url = params[:image_url]
    @car.save
    render :show
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    render html: "This car got into a car accident and was considered a total loss."
  end
end

