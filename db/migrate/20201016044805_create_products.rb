class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.boolean :published, default: false
      t.integer :user_id, foreign_key: true

      t.timestamps
    end
  end
end
