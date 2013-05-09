class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.integer :user_id
      t.integer :admin_id
      t.string :name
      t.integer :number
      t.string :start
      t.string :finish
      t.string :content
      t.string :city
      t.float :weight
      t.float :price, :default => 1
      t.boolean :road, :default => false
      t.boolean :end, :default => false

      t.timestamps
    end
      add_index("deliveries", "user_id")
      add_index("deliveries", "admin_id")
  end
end
