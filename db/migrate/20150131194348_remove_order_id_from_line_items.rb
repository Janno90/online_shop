class RemoveOrderIdFromLineItems < ActiveRecord::Migration
  def change
    remove_index :line_items, :order_id
    remove_column :line_items, :order_id, :integer
  end
end
