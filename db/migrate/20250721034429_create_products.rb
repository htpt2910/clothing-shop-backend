class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.integer :price, null: false
      t.integer :stock, null: false, default: 0
      t.references :category, null: false, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
