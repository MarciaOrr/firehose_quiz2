class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def create
    @dog = Dog.create(dog_params)
    redirect_to root_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :nickname, :birthday, :story)
  end
end
