class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params_contact)
    if @contact.save
      flash[:success] = 'Wiadomość została wysłana. Skontaktujemy się z Państwem najszybciej jak to tylko możliwe.'
      redirect_to :back
      ContactMailer.message_mail(@contact.name, @contact.email, @contact.message).deliver_now
    else
      flash[:error] = "Problem z wysłaniem wiadomości."
      redirect_to :back
    end
  end

  private

  def params_contact
    params.require(:contact).permit(:name, :email, :message)
  end
end

