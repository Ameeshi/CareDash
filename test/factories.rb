FactoryBot.define do
  
  factory :doctor do
    name "Dr. John Doe"
  end
  
  factory :review do 
    description "A great doctor"
    association :doctor
  end

end