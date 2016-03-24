# days_controller.rb

class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit]
  before_action :authenticate_user!, only: [:show, :new, :create, :edit, :update, :destroy]  ##might be able to do this on set_day

  def index
    @all_days = Day.all
  end


  def show
  end


  def new
    @day = Day.new
    @user = User.find(params[:user_id])
  end


  def edit
  end

  
  def create
    @new_day = Day.new(day_params)

    ## add validation for date?

    if @new_day.save
      redirect_to user_path(current_user)
      ## render :action => :redirect_show
      # redirect_to "/users/" + day_params.user_id
    else 
      render :action => :new
    end
  end


  def update
    @day = Day.find(params[:id])
    ## add validation for date?

    @day.update(day_params)

    redirect_to user_path(current_user)

  end


  def destroy
    @day = Day.find(params[:id])

    @day.destroy

    redirect_to user_path(current_user)
  end


  def redirect_show ## for logged in user root
    redirect_to user_path(current_user)
  end


  ## PRIVATE ACTIONS
  def set_day
    @day = Day.find(params[:id])
    @user = User.find(params[:user_id]) ## need this for hidden field in form
    # @days_to = Day.days_to(@day.date)
  end


  def day_params
    params.require(:day).permit(:name, :date, :description, :user_id)
  end

  
end