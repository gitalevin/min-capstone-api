class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: { only_integer: true }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }
  # validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i
  # validates :image_url, :url => true
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products

  # def suppliers
  #   Supplier.find_by(id: supplier_id)
  # end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
