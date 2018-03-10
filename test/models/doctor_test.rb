require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
	
  	should have_many(:reviews)

  	should validate_presence_of(:name)

  	# set up context
  	include Contexts

  	context "Within context" do
    setup do 
      create_doctors
      create_reviews
    end
    
    teardown do
      delete_reviews
      delete_doctors
    end
end
end
