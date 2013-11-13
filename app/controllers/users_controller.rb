class UsersController < ApplicationController

  def index
    @wines = Wine.all.limit(5)
    @cheeses = Cheese.all.limit(5)
  end

end
