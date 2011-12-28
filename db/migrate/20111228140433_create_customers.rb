class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :first_name
      t.text :last_name
      t.text :address1
      t.text :address2
      t.integer :city_id
      t.integer :state_id
      t.integer :postal_id

      t.timestamps
    end
  end
end
