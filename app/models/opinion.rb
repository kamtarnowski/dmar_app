class Opinion < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  validates :content, presence: true, length: { maximum: 250, minimum: 25 }
end
