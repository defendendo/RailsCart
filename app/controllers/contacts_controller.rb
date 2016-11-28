class ContactsController < ApplicationController
	def new
    @contact= Contact.new
  end

  def create
    @contact= Contact.new(new_params)                        
    if @contact.save
      ContactUs.new_contact_notification(@contact).deliver                          
      redirect_to :back
    else
      render :new
    end
  end

  def new_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
