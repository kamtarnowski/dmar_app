class StaticPagesController < ApplicationController
  def home
    @users = User.all
    @contact = Contact.new
    @opinions = Opinion.all
  end
end
