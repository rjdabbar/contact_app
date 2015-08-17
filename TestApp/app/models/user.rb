class User < ActiveRecord::Base
  validates :name, :email, presence: true, uniqueness: true

  has_many :contacts, dependent: :destroy

  has_many :contact_shares, dependent: :destroy

  has_many :shared_contacts,
    through: :contact_shares,
    source: :contact
end
