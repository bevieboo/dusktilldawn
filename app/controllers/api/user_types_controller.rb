module Api

    class UserTypesController < ApplicationController

      def index
        @user_types = UserType.all
        render json: @user_types.to_json, status: 201
      end

      def new
      end

      def create
        user_type = UserType.new
        user_type.name = params[:name]
        user_type.save
        render json: user_type.to_json, status: 201
      end

      def show
        @user_type = UserType.find(params[:id])
        render json: @user_type.to_json, status: 201
      end

      def update
        user_types = UserType.find(params[:id])
        user_type.name = params[:name]
        user_type.save
        render json: user_type.to_json, status: 201
      end

      def destroy
        user_type = UserType.find(params[:id])
        user_type.destroy
      end

    end
end
