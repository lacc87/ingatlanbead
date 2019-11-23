class MenusController < ApplicationController
  skip_before_action :authenticate_request


  def index
    if params.has_key? :place
      @menus = Menu.where(place: params[:place]).order(:ranking)
    else
      @menus = Menu.order(:ranking).all
    end
    render json: @menus
  end

  def show
    render json: Menu.find(params[:id])
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      render json: @menu, status: :created, location: @menu
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update(menu_params)
      render json: @menu
    else
      render json: @menu.errors, status: :unprocessable_entity
    end
  end

  private

  def menu_params
    params.permit([:key, :cm_id, :url, :place, :ranking])
  end
end
