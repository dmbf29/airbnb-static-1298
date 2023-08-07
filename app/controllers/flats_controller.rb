require 'open-uri'

class FlatsController < ApplicationController

  def index
    # ActiveRecord tomorrow:
    # @flats = Flat.all
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
    @flat = @flats.find do |flat|
      flat['id'] == params[:id].to_i
    end
  end
end
