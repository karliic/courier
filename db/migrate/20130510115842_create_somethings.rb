class CreateSomethings < ActiveRecord::Migration
  def change
    create_table :somethings do |t|
      t.string :username
      t.string :password
      t.string :from
      t.string :to
      t.string :amount
      t.string :info

      t.timestamps
    end
  end
end
