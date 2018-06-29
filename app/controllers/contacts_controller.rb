class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    @contact.save
    render "show.json.jbuilder"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
