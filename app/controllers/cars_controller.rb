class CarsController < ApplicationController
  protect_from_forgery with: :exception, unless: -> { request.format.json? }
  def index
    @cars = Car.all
    render :index 
  end

  def create
    render html: "Test"

  end

end

