class AddStayToWorkOrder < ActiveRecord::Migration
  def change
    add_reference :work_orders, :stay, index: true, foreign_key: true
  end
end
