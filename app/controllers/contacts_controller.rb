class ContactsController < ApplicationController
  def one_contact_method
    @contact = Contact.first
    render "one_contact.json.jbuilder"
  end
end
