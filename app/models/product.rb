class Product < ActiveRecord::Base
  belongs_to :category

  validates :category, presence: true
  validates :name, presence: true
  validates :price, presence: true

  has_many :line_items
  has_many :orders, through: :line_items

  scope :newest, ->(limit = 5) { Product.all.order("id desc").limit(limit) }
end
