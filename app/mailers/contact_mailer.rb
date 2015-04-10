class ContactMailer < ApplicationMailer

  def message_mail(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(to: 'dmarkontakt2@gmail.com', subject: "Dmar Kontakt")
  end
end
