class GamesController < ApplicationController
  def new
    @letters = (0...10).map { ('A'..'Z').to_a[rand(26)] }
  end

  def score
    @finded_word = params[:word]
    require 'json'
    require 'open-uri'
    url = "https://wagon-dictionary.herokuapp.com/#{@finded_word}"
    user_serialized = open(url).read
    @user = JSON.parse(user_serialized)
  end
end

    # require 'json'
    # require 'open-uri'

    # url = "https://wagon-dictionary.herokuapp.com/sss"
    # user_serialized = open(url).read
    # user = JSON.parse(user_serialized)
