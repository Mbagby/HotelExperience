class Room < ActiveRecord::Base
	belongs_to :hotel
	has_many :stays
	has_many :work_orders
	has_many :users
end
