class Product < ApplicationRecord
  belongs_to :balance
  belongs_to :product_kind
  belongs_to :user
end
