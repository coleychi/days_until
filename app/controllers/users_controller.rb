# users_controller.rb

class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  before_action :authenticate_user!, only: [:show]  ##might be able to do this on set_user

  def index
    @all_users = User.all
  end

  def show
    @user = User.find(params[:id])
  end



  ## PRIVATE ACTIONS
  private

  def set_user
    @user = User.find(params[:id])
  end
  
end