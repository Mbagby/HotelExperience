class AddDoNotDisturbToStay < ActiveRecord::Migration
  def change
  	change_table :stays do |t|
      t.boolean :do_not_disturb, :default => false
    end
  end


end
