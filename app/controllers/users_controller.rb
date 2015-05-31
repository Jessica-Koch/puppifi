class UsersController < ApplicationController 
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate
  
  def index
    render json: User.all
  end

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :avatar)
    end
end

