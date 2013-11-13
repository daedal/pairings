class CheesesController < ApplicationController
  def index
    @cheeses = Cheese.all
  end

  def show
    @cheese = Cheese.find_by(id: params[:id])
  end

  def new
    @cheese = Cheese.new
  end

  def create
    @cheese = Cheese.create(cheese_params)
    if @cheese
      redirect_to wines_path 
    else
      render :new
    end
  end

  private

  def cheese_params
    params.require(:cheese).permit(
      :name,
      :country_of_origin,
      :region,
      :milk,
      :texture_type,
      :color,
      :age
      )
  end
end
