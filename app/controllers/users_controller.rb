class UsersController < ApplicationController

  def index
    @wines = Wine.all.limit(5)
    @cheeses = Cheese.all.limit(5)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.build(user_params)
    if @user.save
      session[:id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    #insert params here
  end
end
