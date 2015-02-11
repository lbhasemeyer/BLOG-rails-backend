class CommentsController < ApplicationController

  def index
    render json: Comment.all, except: [:user, :post]
  end

  def show
    render json: Comment.find(params[:id]), except: [:user, :post]
  end

end
