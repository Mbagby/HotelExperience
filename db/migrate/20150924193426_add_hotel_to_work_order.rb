class AddHotelToWorkOrder < ActiveRecord::Migration
  def change
    add_reference :work_orders, :hotel, index: true, foreign_key: true
  end
end
