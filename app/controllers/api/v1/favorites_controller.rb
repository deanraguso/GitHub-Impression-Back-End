class Api::V1::FavoritesController < ApplicationController
  before_action :user
  
  def create
    user.update(favorites: user.favorites + params[:favorites])
    render json: user.favorites, status: :created
  end

  def update
  end

  def destroy
  end

  def show
    render json: user.favorites, status: :ok
  end

  private 

  def user
    user = User.find_by(id: params.require(:id))
  end
end
