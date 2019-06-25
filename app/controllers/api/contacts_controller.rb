class Api::ContactsController < ApplicationController


  def the_contact 
    @contact = Contact.all
    render 'contact.json.jb'

  end 

end
