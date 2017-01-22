class Owner < ApplicationRecord
	has_secure_password
	has_many :pets
	has_many :reservations



	validates :email, presence: true 
	validates :email, uniqueness: true 
	validates :password, presence: true, length: { in: 6..20 }
end
