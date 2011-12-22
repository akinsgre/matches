class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.text :brand
      t.text :model
      t.text :type
      t.integer :size

      t.timestamps
    end
  end
end
