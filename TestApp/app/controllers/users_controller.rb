require 'byebug'
class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def update
    # debugger
  end

  def create
    user = User.new(params[:user].permit(:name, :email))
    user.save!
    render json: user
  end
end
