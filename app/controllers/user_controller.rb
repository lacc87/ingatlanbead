class UserController < ApplicationController
    skip_before_action :authenticate_request, only: [:create]


    def index
      render json: @current_user
    end

    def show
      render json: @current_user
    end

    def create
      @user = User.new(user_params)
      @user.params_items = params[:user_metas]
      if @user.save
        render json: @user, status: :created, location: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end

    def update
      @current_user.params_items = params[:user_metas]
      if @current_user.update(user_params)
        render json: @current_user
      else
        render json: @current_user.errors, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.permit([:name, :email, :password, :password_confirmation, :type])
    end

end
