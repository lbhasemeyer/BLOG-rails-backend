class UsersController < ApplicationController

  def index
    render json: User.all, except: [:posts, :comments]
  end

  def show
    render json: User.find(params[:id])
  end

end
