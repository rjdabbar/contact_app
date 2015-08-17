class Group < ActiveRecord::Base
  belongs_to :user

  has_many :contact_groups

  has_many :contacts,
    through: :contact_groups,
    source: :contact

end
