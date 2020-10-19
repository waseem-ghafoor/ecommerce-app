class AddProductImagesToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :product_images, :json
  end
end