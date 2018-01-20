class PackedLunch < ApplicationRecord
  has_and_belongs_to_many :user_orders
end
