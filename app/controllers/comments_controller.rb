class CommentsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @image = Image.find(params[:image_id])
    @comments = Comment.all
    @comment = Comment.new
  end

  def create
    @user = User.find(params[:user_id])
    @image = Image.find(params[:image_id])
    @comment = Comment.new(comment_params)
    @comment.user_id = @user.id
    @comment.image_id = @image.id
    binding.pry
    if @comment.save
      flash[:notice] = "Comment successfully added!"
      redirect_to user_image_path(@user,@image)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @image = Image.find(params[:image_id])
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to '/'
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :user_id, :image_id)
    end
end
