class PetType < ApplicationRecord
	has_many :sitter_pet_types
	has_many :sitters, through: :sitter_pet_types
end
