class Api::V1::FavoritesController < ApplicationController
  def create
    
  end

  def update
  end

  def destroy
  end

  def show
    user = User.find_by(id: params.require(:id))
    render json: user.favorites, status: :ok
  end
end
