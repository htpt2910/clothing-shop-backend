class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items

  validates :total_price, presence: true, numericality: { greater_than: 0 }
  validates :status, presence: true

  enum status: { pending: "pending", paid: "paid", shipped: "shipped", delivered: "delivered", cancelled: "cancelled" }
end
