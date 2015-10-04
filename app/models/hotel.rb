class Hotel < ActiveRecord::Base
	belongs_to :users
	belongs_to :room
	belongs_to :hotel
	belongs_to :stay
	has_many :dayservices
	has_many :eveningservices
	has_many :work_orders
end
