require 'byebug'
class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def update
    # debugger
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def show
    render json: User.find(params[:id])
  end

  def update
    User.update(user_params)
  end

  def destroy
    User.destroy(params[:id])
  end

  private

  def user_params
    params[:user].permit(:name, :email)
  end
  
end
