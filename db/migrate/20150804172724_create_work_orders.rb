class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.text :description
      t.text :image_url

      t.timestamps null: false
    end
  end
end
