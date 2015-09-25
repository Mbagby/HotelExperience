class AddAttachmentImageToWorkOrders < ActiveRecord::Migration
  def self.up
    change_table :work_orders do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :work_orders, :image
  end
end
