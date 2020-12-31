class CatsController < ApplicationController

  def index
    @kitties = Cat.all 
    render :index

  end 

  def show 
    @kitty = Cat.find(params[:id])
    render :show 
  end 

  def create 
    @kitty = Cat.new(cat_params)

    if @kitty.save 
        redirect_to cat_url(@kitty)
    else 
        render :new
  end 

  def update 
    @kitty = Cat.find(params[:id])

    if @kitty.update(cat_params)
        redirect_to cat_url(@kitty)
    else 
        render :edit
  end 

  def new
    @kitty = Cat.new
    render :new
  end 

  def edit 
    @kitty = Cat.find(params[:id])
    render :edit
  end 

  def cat_params
    params.require(:cat).permit(:name, :birthdate, :color, :age, :sex, :description)
  end 

end
