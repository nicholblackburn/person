class AnimalsController < ApplicationController
  
  def index
    @animals = Animal.order(created_at: :asc)
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new 

  end

  def create 
    @animal = Animal.new(animal_params)

  if 
    @animal.save
    redirect_to animals_path
  else 
    render :new 
  end 
  end

  def edit
    @animal = Animal.find(params[:id])
end

def update 
  @animal = Animal.find(params[:id])

  if
    @animal.update(animal_params)
    redirect_to animal_path(@animal.id)
    
  else 
    render :edit 
  end
end

def destroy
  Animal.find(params[:id]).destroy 
  redirect_to animals_path 
end

private 

def animal_params 
  params.require( :animal).permit( :name, :age, :hair_color, :gender, :alive)
end 

end
