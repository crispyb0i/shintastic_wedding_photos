class ImagesController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @image = @user.images.first
    @images = Image.all
  end

  def new
    @user = User.find(params[:user_id])
    @image = @user.images.new
  end

  def create
    @user = User.find(params[:user_id])
    @image = @user.images.new(image_params)
    if @image.save
      flash[:notice] = "Review successfully added!"
      redirect_to user_images_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @image = Image.find(params[:id])
    @comments = Comment.where(image_id: @image.id)
  end

  def destroy
    @user = current_user
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to '/'
  end

private
  def image_params
    params.require(:image).permit(:url, :user_id)
  end
end
