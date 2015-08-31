class CreateStays < ActiveRecord::Migration
  def change
    create_table :stays do |t|
      t.string :title
      t.string :checkin
      t.string :checkout

      t.timestamps null: false
    end
  end
end
