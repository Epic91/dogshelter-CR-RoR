class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
  end

  def create
    @dog = Dog.new
    @dog[:name] = params[:dog][:name]
    @dog[:breed] = params[:dog][:breed]
    @dog[:gender] = params[:dog][:gender]
    @dog[:age] = params[:dog][:age]
    @dog[:description] = params[:dog][:description]
    @dog.save

    redirect_to dog_path(@dog)
  end

  def show
    @dog = Dog.find(params[:id])
  end
end
