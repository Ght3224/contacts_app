class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    # render 'index.json.jb'
    # if youre logged in, see your contacts
    if current_user
      @contacts = current_user.contacts
    else
      @contacts = []
    end
    render 'index.json.jb'
  end

    def show
      @contact = Contact.find_by(
        id: params[:id]
      )
      render 'show.json.jb'
    end

    def create
      p '*****'
      p current_user
      @contact = Contact.new(
        first_name: params[:first_name],
        middle_name: params[:middle_name],
        last_name: params[:last_name],
        bio: params[:bio],
        email: params[:email],
        phone_number: params[:phone_number],
        user_id: params[:user_id]
      )

      if @contact.save 
        render 'create.json.jb'
      else
        render 'errors.json.jb'
      end
    end

  def update
  @contact = Contact.find_by(id: params[:id])
    if @contact.update(
           first_name: params[:first_name],
          middle_name: params[:middle_name],
          last_name: params[:last_name],
          bio: params[:bio],
          email: params[:email],
          phone_number: params[:phone_number] )
      render 'update.json.jb'
    else
      render 'errors.json.jb'
    end
  end


    def destroy
      @contact = Contact.find_by(id: params[:id])
      @contact.destroy
      render 'destroy.json.jb'
    end




end
