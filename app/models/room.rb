class Room < ActiveRecord::Base
	belongs_to :hotel
	belongs_to :stay
	has_many :work_orders
	has_many :users
end
