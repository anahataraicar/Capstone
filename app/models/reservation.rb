class Reservation < ApplicationRecord
	belongs_to :owner
	belongs_to :sitter
	belongs_to :pet
end
