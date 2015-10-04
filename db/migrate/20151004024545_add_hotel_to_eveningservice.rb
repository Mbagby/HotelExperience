class AddHotelToEveningservice < ActiveRecord::Migration
  def change
    add_reference :eveningservices, :hotel, index: true, foreign_key: true
  end
end
