class WorkOrder < ActiveRecord::Base
	belongs_to :hotel
	belongs_to :room
	belongs_to :stay
	belongs_to :user
end
