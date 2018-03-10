# require needed files
require './test/sets/doctor_contexts'
require './test/sets/review_contexts'

module Contexts
  # explicitly include all sets of contexts used for testing 
  include Contexts::DoctorContexts
  include Contexts::ReviewContexts

  def create_cuke_contexts
    create_reviews
    create_doctors
  end

end