class AddRoomsToStay < ActiveRecord::Migration
  def change
    add_reference :stays, :room, index: true, foreign_key: true
  end
end
