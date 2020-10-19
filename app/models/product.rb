class Product < ApplicationRecord
  mount_uploaders :product_images, ProductImagesUploader
  belongs_to :user
  has_and_belongs_to_many :carts
  validates :name, presence: true
  validates :price, presence: true
  validates :product_images, presence: true

  scope :published_products, ->{ where(published: true) }
  #scope :fetch_products,  -> (id){ find_by(id: id) }
end
