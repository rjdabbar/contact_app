class ContactSharesController < ApplicationController
  def index
    render json: ContactShare.all
  end

  def show
    render json: ContactShare.find(params[:id])
  end

  def create
    @contact_share = ContactShare.new(shares_params)
    if @contact_share.save
      render json: @contact_share
    else
      render(
        json: @contact_share.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def update
    @contact_share = ContactShare.new(shares_params)
    if @contact_share
      ContactShare.update(shares_params)
    else
      render(
        json: @contact_share.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    @contact_share = ContactShare.find(params[:id])
    @contact_share.destroy
  end

  private

  def shares_params
    params[:contact_share].permit(:user_id, :contact_id)
  end

end
