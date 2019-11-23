class ContactsController < ApplicationController



  def index
    @contacts = Contact.all

    render "index.html.erb"
  end 


  def show 
    @contact = Contact.find_by(id: params[:id])
  end 


  def new 
    @users = User.all 
    render 'new.html.erb'
  end 



  def create 

    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      # url: params[:url],
      email: params[:email],
      user_id: params[:user_id]
      )

    @contact.save
    # render 'show.html.erb'
    redirect_to "/contacts/#{@contact.id}"
  end 



  def edit 
    @contact = Contact.find_by(id: params[:id])
    render 'edit.html.erb'
  end 


  def update 
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email], 
      user_id: params[:user_id]
      # supplier: params[:supplier]
      )
     p params[:first_name]
    @contact.save!
    redirect_to "/contacts/#{@contact.id}"
  end 

  def destroy 
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    redirect_to "/contacts"
  end 
end

