class Stay < ActiveRecord::Base
	belongs_to :user
	has_many :work_orders, dependent: :destroy
	has_many :dayservices, dependent: :destroy
	has_many :eveningservices, dependent: :destroy
	has_one :hotel
	has_many :rooms

end

