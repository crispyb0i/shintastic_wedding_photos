class CommentsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @image = Image.find(params[:image_id])
    @comments = Comment.all
    binding.pry
    @comment = @user.comments.new
  end

  def create
  end
end
