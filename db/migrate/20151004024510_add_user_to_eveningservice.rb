class AddUserToEveningservice < ActiveRecord::Migration
  def change
    add_reference :eveningservices, :user, index: true, foreign_key: true
  end
end
