class Category < ApplicationRecord
  # Association
  has_many :subs, class_name: 'Category', foreign_key: :parent_id, dependent: :destroy
  belongs_to :superior, class_name: 'Category', foreign_key: :parent_id, dependent: :destroy
  has_many :inventories, dependent: :destroy
  has_one :discounts, dependent: :destroy

  # Validation
  validates :name, presence: true, uniqueness: true
end
