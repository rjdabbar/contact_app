require 'byebug'
class GroupsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    if @user
      render json: @user.groups
    end
  end

  def show
    # debugger
    @group = Group.find(params[:id])
    if @group
      render json: @group.contacts
    end
  end

  def create
  end

  def destroy
  end

  def update
  end


end
