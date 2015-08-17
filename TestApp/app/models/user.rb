class User < ActiveRecord::Base
  validates :name, :email, presence: true, uniqueness: true
  
  has_many :contacts
end
