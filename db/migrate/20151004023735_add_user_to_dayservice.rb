class AddUserToDayservice < ActiveRecord::Migration
  def change
    add_reference :dayservices, :user, index: true, foreign_key: true
  end
end
