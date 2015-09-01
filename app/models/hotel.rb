class Hotel < ActiveRecord::Base
	has_many :stays
	has_many :rooms
	has_many :users
	has_many :work_orders
end
