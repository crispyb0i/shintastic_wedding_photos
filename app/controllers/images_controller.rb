class ImagesController < ApplicationController
  def index
    @users = User.all
    @user = current_user
  end

  def new
  end

  def create
  end

  def show
    @images.all
  end

  def destroy
  end
end
