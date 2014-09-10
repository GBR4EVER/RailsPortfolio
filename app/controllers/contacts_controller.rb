class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    
    if @contact.save
      redirect_to contact_list_path
    else
      render "new"
    end
  end
  
  def edit
    @contact = Contact.find(params[:id])
  end
  
end
