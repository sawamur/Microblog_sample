class AccountController < ApplicationController
  def login
    @user = User.new
  end

  def follow 
    @me = current_user
    @user = User.find(params[:id])
    @con = Connection.create(:from_id => @me.id,
                      :to_id => @user.id)
    if @con.valid?
      redirect_to :controller => "timeline",:action => "user",:id => @user.name
    else
      render :text => "follow failed"
    end
  end


  def authorize
    name = params[:user][:name]
    pw = params[:user][:passwd]
    u = User.find_by_name(name)
    if !u.nil? && u.passwd == pw
      session[:user_id] = u.id
      redirect_to :action => "index"
    else
      render :text => "login failed"
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    unless @user.valid?
      redirect_to :action => "new"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to :action => "login"
  end

  def index
    @user = User.find(session[:user_id])
  end

end
