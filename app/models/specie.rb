class Specie < ApplicationRecord
	has_many :sitters, through: :accepted_species
	has_many :accepted_species
end
