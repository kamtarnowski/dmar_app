class Contact < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50, minimum: 2 }
  validates :email, presence: true, format: Devise::email_regexp
  validates :message, presence: true, length: { maximum: 500 }
end
