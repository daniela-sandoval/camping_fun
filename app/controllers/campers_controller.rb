class CampersController < ApplicationController

  def index
    @campers = Camper.all
  end

  def show
    @camper = Camper.find(params[:id])
    @active = @camper.activities
  end

  def new
    @camper = Camper.new
  end

  def create
    @camper = Camper.create(camper_params)
    redirect_to @camper
  end

  def edit
    @camper = Camper.find(params[:id])
  end

  def update
    @camper = Camper.find(params[:id])
    @camper.update(camper_params)
    redirect_to @camper
  end

  def destroy
    @camper = Camper.find(params[:id])
    @camper.destroy
    redirect_to campers_path
  end

  private
  def camper_params
    params.require(:camper).permit(:name, :age)
  end


end
