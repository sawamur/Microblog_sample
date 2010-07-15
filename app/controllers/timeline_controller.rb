class TimelineController < ApplicationController
  
  def index
    unless logged_in?
      redirect_to( :controller => "account",:action =>"login") and return
    end
    @me = current_user
    @tweet = Tweet.new
  end
  
  def create
    @me = current_user
    @tweet = Tweet.new(params[:tweet])
    @tweet.user_id = @me.id
    @tweet.save
    if @tweet.valid?
      redirect_to :action => "index"
    else
      render :text => "tweet failed"
    end
  end

  def user
    @me = current_user
    @user = User.find_by_name(params[:id])
  end
end
