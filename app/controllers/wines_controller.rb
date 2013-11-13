class WinesController < ApplicationController
  
  def index
    @wines = Wine.all
  end

  def show
    @wine=Wine.find_by(id: params[:id])
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.create(wine_params)
    if @wine
      redirect_to wines_path
    else
      render :new
    end
  end

  def variety
    @varieties = Grape.find_by(variety: params[:type])
  end

  private

  def wine_params
    params.require(:wine).permit(
      :vintage,
      :winery,   
      :grape_type,
      :appellation,
      :variety,
      :alcohol_percentage,
      :serving_temperature,
      :sweetness,
      :acidity,
      :tanin,
      :fruit,
      :body
     )
  end
end
