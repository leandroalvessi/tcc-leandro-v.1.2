class Product < ApplicationRecord
  belongs_to :balance
  belongs_to :product_kind
  belongs_to :user
  RailsAdmin.config do |config|
    config.default_items_per_page = 10
    config.model Product do
      list do
        sort_by :id
      end
    end
  end
end
