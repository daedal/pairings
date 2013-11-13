class TraitsController < ApplicationController

  def new
    @trait = Trait.new
  end

  def create
    @trait = Trait.create(trait_params)
    if @trait
      redirect_to wines_path
    else
      render :new
    end
  end

  private

  def trait_params
    params.require(:trait).permit(:name, :description)
  end
end
