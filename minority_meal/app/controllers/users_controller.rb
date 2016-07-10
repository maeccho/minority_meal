class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @name = current_user.name
    @tweets = user.tweets(user_id: [:user_id]).order("created_at DESC")
  end

end
