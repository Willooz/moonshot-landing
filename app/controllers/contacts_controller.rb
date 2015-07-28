class ContactsController < ApplicationController

  def new
    @contact = Contact.new
    render 'pages/home'
  end

  def thanks
    render 'pages/thanks'
  end

  def create
    new_contact = Contact.create(contact_params)
    redirect_to thanks_path
  end

  def contact_params
    params.require(:contact).permit(:name, :info)
  end
end