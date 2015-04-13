class StaticPagesController < ApplicationController
  def home
    @users = User.all
    @contact = Contact.new
    @opinions = Opinion.where(status: true)
  end
end
