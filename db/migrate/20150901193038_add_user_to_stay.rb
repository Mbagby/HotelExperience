class AddUserToStay < ActiveRecord::Migration
  def change
    add_reference :stays, :user, index: true, foreign_key: true
  end
end
