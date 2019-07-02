class Api::ContactsController < ApplicationController


  def index
    @contact = Contact.all
    render 'index.json.jb'
  end 


    def show 
      
      @contact = Contact.find_by(id: params[:id])
      render 'show.json.jb'
    end 


    def create 
      @contact = Contact.new(
        first_name: params[:first_name], 
        last_name: params[:last_name], 
        email: params[:email], 
        phone_number: params[:phone_number]).save 
      render 'create.json.jb'
    end 



    def update 
      @contact = Contact.find_by(id: params[:id])
      @contact.update(
        first_name: params[:first_name], 
        last_name: params[:last_name], 
        email: params[:email],
        phone_number: params[:phone_number])
      render 'update.json.jb'
    end 



    def destroy
      @contact = Contact.find_by(id: params[:id])
      @contact.destroy
      render 'destroy.json.jb'
    end




end
