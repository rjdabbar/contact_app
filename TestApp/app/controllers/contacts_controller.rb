class ContactsController < ApplicationController

  def index
    render json: Contact.all
  end

  def show
    render json: Contact.find(params[:id])
  end

  def update
    @contact = Contact.new(contact_params)
    if @contact
      Contact.update(contact_params)
    else
      render(
        json: @contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact
    else
      render(
        json: @contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end




  private

  def contact_params
    params[:contact].permit(:name, :email, :user_id)
  end
end
