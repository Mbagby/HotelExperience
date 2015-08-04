class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :number
      t.string :floor
      t.string :tower

      t.timestamps null: false
    end
  end
end
