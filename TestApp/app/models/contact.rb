class Contact < ActiveRecord::Base
  validates :name, :email, presence: true, uniqueness: { scope: :user_id }

  belongs_to :owner,
    class_name: 'User',
    foreign_key: :user_id
end
