class Api::ContactsController < ApplicationController


  def the_contact 
    @contact = Contact.first
    render 'contact.json.jb'

  end 
  
end
