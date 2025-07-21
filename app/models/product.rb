class Product < ApplicationRecord
  belongs_to :category
  has_many :cart_items, dependent: :destroy
  has_many :order_items, dependent: :restrict_with_error
  has_many :users, through: :cart_items

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :stock, presence: true, numericality: { greater_than_or_equal_to: 0 }

  scope :available, -> { where("stock > 0") }
end
