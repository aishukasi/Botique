class Discount < ApplicationRecord
  # Association
  belongs_to :categories
  belongs_to :brands

  # Validation
  validates :discount_type, presence: true
  validates :discount_on, presence: true
end
