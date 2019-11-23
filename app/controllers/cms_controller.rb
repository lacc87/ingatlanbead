class CmsController < ApplicationController

  skip_before_action :authenticate_request


  def index
    render json: Cm.select(:id, :title).order(:ranking).all
  end

  def show
    render json: Cm.find(params[:id])
  end

  def create
    @cms = Cm.new(cms_params)
    if @cms.save
      render json: @cms, status: :created, location: @cms
    else
      render json: @cms.errors, status: :unprocessable_entity
    end
  end

  def update
    @cms = Cm.find(params[:id])
    if @cms.update(cms_params)
      render json: @cms
    else
      render json: @cms.errors, status: :unprocessable_entity
    end
  end

  private

  def cms_params
    params.permit([:title, :content, :ranking])
  end

end
