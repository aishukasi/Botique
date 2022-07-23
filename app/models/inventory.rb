class Inventory < ApplicationRecord
  # Assocation
  belongs_to :categories
  belongs_to :brands

  # Validation
   validates :skuid, presence: true, uniqueness: true
   validates :barnd_id, presence: true
   validates :category_id, presence: true
   validates :list_price, presence: true
end
