# @Author: Ronnie
# @Date:   2016-06-09T09:06:25+03:00
# @Last modified by:   Ronnie
# @Last modified time: 2016-06-11T10:49:18+03:00



class PinsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_pin, only: [:show, :edit, :update, :destroy, :upvote]

  def index
    @pins = Pin.all.order('created_at DESC')
  end

  def show
    @comment = @pin.comments.new
  end

  def new
    @pin = current_user.pins.build
  end

  def create
    @pin = current_user.pins.build(pin_params)
    if @pin.save
      redirect_to @pin, notice: "Pin was successfully created"
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: "Pin was successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    @pin.destroy
    redirect_to root_path, notice: "Pin was successfully deleted"
  end

  def upvote
    @pin.upvote_by current_user
    redirect_to :back
  end


  private

  def set_pin
    @pin = Pin.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:title, :description, :image)
  end

end
