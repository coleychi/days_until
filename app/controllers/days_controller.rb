# days_controller.rb

class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update]
  before_action :authenticate_user!, only: [:show]  ##might be able to do this on set_day

  def index
    @all_days = Day.all
  end


  def show
  end

  def edit
  end


  ## PRIVATE ACTIONS
  def set_day
    @day = Day.find(params[:id])
    @user = User.find(params[:user_id])
    # @days_to = Day.days_to(@day.date)
  end

  
end