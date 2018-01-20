class UserOrder < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :packed_lunches

end
