class User < ActiveRecord::Base
	has_secure_password
	validates :email, uniqueness: true, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :password, presence: { message: "Story title is required" }
	validates :password, length: {minimum: 8, maximum: 20}

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://www.bitrebels.com/wp-content/uploads/2011/02/Original-Facebook-Geek-Profile-Avatar-6.jpg"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

	has_many :stays, dependent: :destroy
	has_many :work_orders, dependent: :destroy
	has_many :messages, dependent: :destroy
	has_many :dayservices, dependent: :destroy
	has_many :eveningservices, dependent: :destroy


    def generate_password_reset_token!
    update(password_reset_token: SecureRandom.urlsafe_base64(48))
    end
end
