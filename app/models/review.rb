class Review < ApplicationRecord
	#relationship
  	belongs_to :doctor

  	#Validation
  	validates_presence_of :description

  	#Scope
	scope :alphabetical, -> { joins(:doctor).order('name') }

end
