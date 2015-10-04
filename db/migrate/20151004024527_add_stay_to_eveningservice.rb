class AddStayToEveningservice < ActiveRecord::Migration
  def change
    add_reference :eveningservices, :stay, index: true, foreign_key: true
  end
end
