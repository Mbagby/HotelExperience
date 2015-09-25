class RemoveImageUrlFromWorkOrder < ActiveRecord::Migration
  def change
  	remove_column :work_orders, :image_url
  end
end
