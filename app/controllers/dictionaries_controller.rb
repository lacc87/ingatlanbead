class DictionariesController < ApplicationController

  skip_before_action :authenticate_request


  def index
    @language = params[:lang].present? ? params[:lang] : 'HU'
    render json: Dictionary.select(:id, :key, :value).where(language: @language).all
  end

  def show
    render json: Dictionary.find(params[:id])
  end

  def create
    @dict = Dictionary.new(key: params[:key], value: params[:value], language: params[:language])
    if @dict.save
      render json: @dict, status: :created, location: @dict
    else
      render json: @dict.errors, status: :unprocessable_entity
    end
  end

  def update
    @dict = Dictionary.find(params[:id])
    if @dict.update(value: params[:value])
      render json: @dict
    else
      render json: @dict.errors, status: :unprocessable_entity
    end
  end

end
