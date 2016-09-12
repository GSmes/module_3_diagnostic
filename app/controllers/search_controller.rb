class SearchController < ApplicationController
  def index
    @stations = Station.all(zipcode_params)
  end

  private

  def zipcode_params
    params.require("q")
  end
end
