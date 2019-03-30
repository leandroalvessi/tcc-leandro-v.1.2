class Product < ApplicationRecord
  belongs_to :balance
  belongs_to :product_kind
  belongs_to :user

  validates :code, :unit_of_measurement, :quantity, :description, presence: true

  validates :quantity, format: { with: /\A[+\-]?\d+\z/,        
    message: "é Permitido apanas numeros"}   

  RailsAdmin.config do |config|
    config.default_items_per_page = 10
    config.model Product do
      list do
        sort_by :id
      end
    end
  end
end
