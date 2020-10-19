class CreateJoinTableCartProduce < ActiveRecord::Migration[6.0]
  def change
	create_table :carts_products, id: false do |t|
      t.belongs_to :product
      t.belongs_to :cart
    end
  end
end
