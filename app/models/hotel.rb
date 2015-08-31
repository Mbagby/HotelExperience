class Hotel < ActiveRecord::Base
	belongs_to :stay
	has_many :rooms
	has_many :users
	has_many :work_orders
end
