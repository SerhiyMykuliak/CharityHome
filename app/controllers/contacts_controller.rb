class ContactsController < ApplicationController

  def create
    contact_params = params.require(:contact_form).permit(:name, :email, :phone, :message)

    ContactMailer.contact_form_email(
      name: contact_params[:name],
      email: contact_params[:email],
      phone: contact_params[:phone],
      message: contact_params[:message]
    ).deliver_now

    redirect_to root_path, notice: "Everysing okey"
  end 

end
