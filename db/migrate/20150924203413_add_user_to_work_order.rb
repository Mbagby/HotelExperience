class AddUserToWorkOrder < ActiveRecord::Migration
  def change
    add_reference :work_orders, :user, index: true, foreign_key: true
  end
end
