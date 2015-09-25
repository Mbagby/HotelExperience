class Stay < ActiveRecord::Base
	belongs_to :user
	has_many :work_orders, dependent: :destroy
	has_one :hotel
	has_many :rooms

end

