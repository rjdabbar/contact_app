require 'byebug'
class CommentsController < ApplicationController

  def index
    if params[:contact_id]
      @comments = Contact.find(params[:contact_id]).comments
    elsif params[:user_id]
      @comments = User.find(params[:user_id]).comments
    else
      @comments = Comment.all
    end
    render json: @comments
  end

  def show

  end

  def update
  end

  def create
  end

  def destroy

  end
end
