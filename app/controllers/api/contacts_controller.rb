class Api::ContactsController < ApplicationController


  def the_contact 
    @contact = Contact.all
    render 'contact.json.jb'
  end 


    def show 
      @contacts  = Contact.first
      render 'show.json.jb'
    end 


end
