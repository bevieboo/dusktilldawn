class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    #new form
  end

  def create
    user = User.new
    user.email = params[:email]
    user.password = params[:password]
    user.name = params[:name]
    user.gender = params[:gender]
    user.image = params[:image]
    if params[:user_type_id] == "normal user"
      user.user_type_id = UserType.find_by(name: params[:user_type_id]).id
    elsif params[:user_type_id] == "owner"
      user.user_type_id = UserType.find_by(name: params[:user_type_id]).id
    end
    if user.save
      render :index
    end
  end

  def show
    @user = User.find(params[:id])
    @genres = Genre.all
    @venues = Venue.where(user_id: current_user.id)
  end

  def update
    user.email = params[:email]
    user.password = params[:password]
    user.name = params[:name]
    user.gender = params[:gender]
    user.image = params[:image]
    user.user_type_id = params[:user_type_id]
    user.save
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

end
