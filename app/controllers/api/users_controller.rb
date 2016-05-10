module Api
  class UsersController < ApplicationController

    def index
      @users = User.all
      render json: @users.to_json, status: 201
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
      user.user_type_id = params[:user_type_id]
      user.save
      render json: user.to_json, status: 201
    end

    def show
      @user = User.find(params[:id])
      render json: @user.to_json, status: 201
    end

    def update
      user.email = params[:email]
      user.password = params[:password]
      user.name = params[:name]
      user.gender = params[:gender]
      user.image = params[:image]
      user.user_type_id = params[:user_type_id]
      user.save
      render json: user.to_json, status: 201
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
    end

  end
end
