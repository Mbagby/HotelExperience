class AddStayToDayservice < ActiveRecord::Migration
  def change
    add_reference :dayservices, :stay, index: true, foreign_key: true
  end
end
