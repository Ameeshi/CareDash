namespace :db do
  desc "Erase and fill database"
  # creating a rake task within db namespace called 'populate'
  # executing 'rake db:populate' will cause this script to run
  task :populate => :environment do
    Rake::Task['db:migrate'].invoke

    require 'faker'
    require 'factory_bot_rails'

    # Step 1: clear any old data in the db
    [Doctor, Review].each(&:delete_all)

    john  = Doctor.new
    john.name = "Dr. John Doe"
    john.save! 

    jane  = Doctor.new 
    jane.name = "Dr. Jane Smith"
    jane.save! 

    smith = Doctor.new 
    smith.name = "Dr. Smith Morra"
    smith.save! 

    levi  = Doctor.new 
    levi.name = "Dr. Levi Walker"
    levi.save! 

    ameeshi = Doctor.new 
    ameeshi.name = "Dr. Ameeshi Goel"
    ameeshi.save!
    
    dina = Doctor.new 
    dina.name =  "Dr. Dina Amouzigh"
    dina.save!

    6.times do 
      doctor = Doctor.new
      # get some fake data using the Faker gem
      doctor.name = Faker::Name.name
      # set the timestamps
      doctor.save!
    end

    @john1 = FactoryBot.create(:review, doctor: john)
    @john2 = FactoryBot.create(:review, doctor: john, description: "He is a wonderful doctor and took fantastic care of my husband.")
    @jane1 = FactoryBot.create(:review, doctor: jane, description: "She is a wonderful doctor")
    @jane2 = FactoryBot.create(:review, doctor: jane, description: "I wouldn't recommend her")
    @ameeshi1 = FactoryBot.create(:review, doctor: ameeshi, description: "I haven't met a better doctor")
    @ameeshi2 = FactoryBot.create(:review, doctor: ameeshi, description: "She is awesome!")
    @dina1 = FactoryBot.create(:review, doctor: dina, description: "She is the best in the business")
    @dina2 = FactoryBot.create(:review, doctor: dina, description: "She gives a lot of personal attention and cares a lot about the patients")
    @levi1 = FactoryBot.create(:review, doctor: levi, description: "He is my family doctor. I cannot function without him, he is amazing.")
    @levi2 = FactoryBot.create(:review, doctor: levi, description: "He is awesome!")
    @smith1 = FactoryBot.create(:review, doctor: smith, description: "He is a wonderful doctor")
    @smith2 = FactoryBot.create(:review, doctor: smith, description: "Very hardworking and nice.")
    @john3 = FactoryBot.create(:review, doctor: john, description: "He was awful with me")
    @john4 = FactoryBot.create(:review, doctor: john, description: "He is the best in the business")

  end

end
