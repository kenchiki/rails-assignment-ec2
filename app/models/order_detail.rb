class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product
  delegate :name, :price, to: :product
end
