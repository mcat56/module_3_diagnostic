class AddMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string  :name
      t.string  :role, default: nil
      t.string  :house
      t.string  :patronus, default: nil
      t.boolean :order_of_phoenix

      t.timestamps
    end
  end 
end
