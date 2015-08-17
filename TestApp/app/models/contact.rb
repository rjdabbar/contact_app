class Contact < ActiveRecord::Base
  validates :name, :email, presence: true, uniqueness: { scope: :user_id }

  belongs_to :owner,
    class_name: 'User',
    foreign_key: :user_id

  has_many :contact_shares

  has_many :comments, as: :commentable

  has_many :shared_users,
    through: :contact_shares,
    source: :user
end
