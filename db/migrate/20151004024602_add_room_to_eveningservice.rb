class AddRoomToEveningservice < ActiveRecord::Migration
  def change
    add_reference :eveningservices, :room, index: true, foreign_key: true
  end
end
