# @Author: Ronnie
# @Date:   2016-06-09T09:06:25+03:00
# @Last modified by:   Ronnie
# @Last modified time: 2016-06-09T10:39:49+03:00



class PinsController < ApplicationController

  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  def index
    @pins = Pin.all.order('created_at DESC')
  end

  def show

  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
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


  private

  def set_pin
    @pin = Pin.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:title, :description)
  end

end
