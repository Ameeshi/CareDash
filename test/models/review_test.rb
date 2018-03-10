require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
 
  	should belong_to(:doctor)

  	should validate_presence_of(:description)

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
