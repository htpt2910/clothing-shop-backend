class User < ApplicationRecord
  has_secure_password

  has_many :cart_items, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :products, through: :cart_items

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :role, presence: true

  enum role: { customer: "customer", admin: "admin" }
end
