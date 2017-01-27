class Owner < ApplicationRecord
	has_secure_password
	has_many :pets
	has_many :reservations
	has_many :reviews



	validates :email, presence: true 
	validates :email, uniqueness: true 
	validates :password, presence: true, length: { in: 6..20 }
end
