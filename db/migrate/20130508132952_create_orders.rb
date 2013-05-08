class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :admin_id
      t.string :name
      t.integer :number
      t.string :start
      t.string :finish
      t.string :content
      t.boolean :road, :default => false
       t.boolean :end, :default => false
      
      t.timestamps
    end
     add_index("orders", "user_id")
      add_index("orders", "admin_id")
  end
end
