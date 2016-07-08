class TweetsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @tweets = Tweet.all.order("id DESC")
  end

  def new
  end

  def create
    Tweet.create(name: tweet_params[:name], shop_name: tweet_params[:shop_name], image: tweet_params[:image], explanation: tweet_params[:explanation], address: tweet_params[:address], user_id: current_user.id)
  end

  private
  def tweet_params
    params.permit(:name, :shop_name, :image, :explanation, :address)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
