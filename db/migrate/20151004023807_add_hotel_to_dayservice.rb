class AddHotelToDayservice < ActiveRecord::Migration
  def change
    add_reference :dayservices, :hotel, index: true, foreign_key: true
  end
end
