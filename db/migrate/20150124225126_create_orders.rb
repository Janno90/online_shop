class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :street_address
      t.string :postcode
      t.string :post_office
      t.string :telephone

      t.timestamps null: false
    end
  end
end
