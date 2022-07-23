class Brand < ApplicationRecord
  # Association
  has_many :inventories, dependent: :destroy
  has_one :discounts, dependent: :destroy

  # Validation
  validates :name, presence: true, uniqueness: true
end
