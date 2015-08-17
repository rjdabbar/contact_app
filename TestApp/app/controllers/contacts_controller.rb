require 'byebug'
class ContactsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    if @user
       User.where(id: @user.id).includes(:contacts, :shared_contacts).each do |user|
        @contacts = user.contacts + user.shared_contacts
      end

    else
        @contacts = Contact.all
    end
    render json: @contacts
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
        json: @contact.errors.full_messages, status: :not_found
      )
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy!
    render json: @contact
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
    params.require(:contact).permit(:name, :email, :user_id)
  end
end
