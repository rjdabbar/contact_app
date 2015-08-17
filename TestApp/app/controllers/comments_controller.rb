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
    render json: Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment
      Comment.update(comment_params)
    else
      render(
        json: @comment.errors.full_messages, status: :not_found
      )
    end
  end

  def create
    @comment = Comment.find(params[:id])
    if @comment.save!
      Comment.update(comment_params)
    else
      render(
        json: @comment.errors.full_messages, status: :not_found
      )
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy!
    render json: @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :commentable_id, :commentable_type)
  end

end
