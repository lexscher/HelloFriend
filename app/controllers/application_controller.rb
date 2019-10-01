class ApplicationController < ActionController::API
  def index
    animals = Animal.all
    render json: animals, status: :ok
  end

  def show
    animal = Animal.find(params[:id])
    render json: { stats: animal, introduction: animal.intro }, status: :ok
  end
end
