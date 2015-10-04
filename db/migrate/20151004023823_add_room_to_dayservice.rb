class AddRoomToDayservice < ActiveRecord::Migration
  def change
    add_reference :dayservices, :room, index: true, foreign_key: true
  end
end
