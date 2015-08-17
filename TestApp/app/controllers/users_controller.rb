require 'byebug'
class UsersController < ApplicationController

  def index
    render text: "I'm in the index action!"
  end

  def update
    # debugger
  end

  def create
    render json: params
  end
end
