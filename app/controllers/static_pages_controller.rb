class StaticPagesController < ApplicationController
  def home
    @users = User.all
    @contact = Contact.new
  end
end
