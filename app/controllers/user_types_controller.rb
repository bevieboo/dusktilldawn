class UserTypesController < ApplicationController

  def index
    @user_types = UserType.all
  end

  def new
  end

  def create
    user_type = UserType.new
    user_type.name = params[:name]
    user_type.save
  end

  def show
    @user_type = UserType.find(params[:id])
  end

  def update
    user_types = UserType.find(params[:id])
    user_type.name = params[:name]
    user_type.save
  end

  def destroy
    user_type = UserType.find(params[:id])
    user_type.destroy
  end

end
