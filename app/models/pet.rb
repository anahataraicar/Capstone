class Pet < ApplicationRecord
	belongs_to :owner
	has_many :reservations
	has_many :sitters, through: :reservations
end
