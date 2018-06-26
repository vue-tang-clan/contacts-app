class ContactsController < ApplicationController
  def one_contact_method
    @contact = Contact.first
    @contact.email
    render "one_contact.json.jbuilder"
  end

  def all_contacts_method
    @contacts = Contact.all
    render "all_contacts.json.jbuilder"
  end
end
