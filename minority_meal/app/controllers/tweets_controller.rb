class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
  end

  def create
    Tweet.create(name: params[:name], shop_name: params[:shop_name], explanation: params[:explanation]), address: params[:address] )
  end

end
