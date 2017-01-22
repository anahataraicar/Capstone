class Sitter < ApplicationRecord
	has_secure_password
	has_many :reviews
	has_many :reservations
	has_many :pets, through: :reservations	
	has_many :sitter_pet_types
	has_many :pet_types, through: :sitter_pet_types



	validates :email, presence: true 
	validates :email, uniqueness: true 
	validates :password, presence: true, length: { in: 6..20 }



def self.search(search)
  where("pets_accepted LIKE ? OR first_name LIKE ? OR last_name LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
end
end
