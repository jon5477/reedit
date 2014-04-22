class UserController < ApplicationController
  def index
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    render 'show'
    #if @user.save
    #  render
    #else
	#  render 'new'
    #end
  end

  def show
    @user = User.find(params[:id])
  end
end
