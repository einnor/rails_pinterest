# @Author: Ronnie Nyaga <Ronnie>
# @Date:   2016-06-11T10:55:36+03:00
# @Email:  ronnienyaga@gmail.com
# @Last modified by:   Ronnie
# @Last modified time: 2016-06-11T11:53:15+03:00



class CommentsController < ApplicationController

  def create
    @pin = Pin.find params[:pin_id]
    @comment = @pin.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @pin, notice: "Comment was successfully created"
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:title, :comment)
  end
end
