class Doctor < ApplicationRecord
	#relationship 
	has_many :reviews 

	#Validations
	validates_presence_of :name

	#Scopes
  	scope :alphabetical, -> { order('name') }
end
