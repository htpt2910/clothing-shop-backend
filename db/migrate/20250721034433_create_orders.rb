class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :status, default: 'pending', null: false
      t.integer :total_price, null: false

      t.timestamps
    end
  end
end
