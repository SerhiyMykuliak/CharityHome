class ContactMailer < ApplicationMailer

  def contact_form_email(name:, email:, phone:, message:)
    @name = name
    @phone = phone
    @message = message
    @email = email
    mail(from: email ,to: 'your_email@example.com', subject: 'New Contact Form Message')
  end

end
