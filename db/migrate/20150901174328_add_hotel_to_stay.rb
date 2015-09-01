class AddHotelToStay < ActiveRecord::Migration
  def change
    add_reference :stays, :hotel, index: true, foreign_key: true
  end
end
