class CreateDayservices < ActiveRecord::Migration
  def change
    create_table :dayservices do |t|
      t.date :appointment_date
      t.time :appointment_time
      t.boolean :completion, :default => false

      t.timestamps null: false
    end
  end
end
