class OrderDay < ApplicationRecord
  has_many :user_orders
end
