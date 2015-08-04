class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :description
      t.text :address
      t.text :image_url
      t.text :website_url
      t.text :description
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
