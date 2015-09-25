class AddRoomToWorkOrder < ActiveRecord::Migration
  def change
    add_reference :work_orders, :room, index: true, foreign_key: true
  end
end
