class SitterPetType < ApplicationRecord
	belongs_to :sitter
	belongs_to :pet_type
end
