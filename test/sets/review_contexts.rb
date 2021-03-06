module Contexts
	module ReviewContexts
		def create_reviews 
			@john1 = FactoryBot.create(:review, doctor: @john)
			@john2 = FactoryBot.create(:review, doctor: @john, description: "He is a wonderful doctor and took fantastic care of my husband.")
			@jane1 = FactoryBot.create(:review, doctor: @jane, description: "She is a wonderful doctor")
			@jane2 = FactoryBot.create(:review, doctor: @jane, description: "I wouldn't recommend her")
			@ameeshi1 = FactoryBot.create(:review, doctor: @ameeshi, description: "I haven't met a better doctor")
			@ameeshi2 = FactoryBot.create(:review, doctor: @ameeshi, description: "She is awesome!")
			@dina1 = FactoryBot.create(:review, doctor: @dina, description: "She is the best in the business")
			@dina2 = FactoryBot.create(:review, doctor: @dina, description: "She gives a lot of personal attention and cares a lot about the patients")
			@levi1 = FactoryBot.create(:review, doctor: @levi, description: "He is my family doctor. I cannot function without him, he is amazing.")
			@levi2 = FactoryBot.create(:review, doctor: @levi, description: "He is awesome!")
			@smith1 = FactoryBot.create(:review, doctor: @smith, description: "He is a wonderful doctor")
			@smith2 = FactoryBot.create(:review, doctor: @smith, description: "Very hardworking and nice.")
			@john3 = FactoryBot.create(:review, doctor: @john, description: "He was awful with me")
			@john4 = FactoryBot.create(:review, doctor: @john, description: "He is the best in the business")
		end 

		def delete_reviews
			@john1.delete
			@john2.delete
			@jane1.delete
			@jane2.delete
			@levi1.delete
			@levi2.delete
			@ameeshi2.delete
			@ameeshi1.delete
			@dina1.delete
			@dina2.delete
			@smith1.delete
			@smith2.delete
			@john3.delete
			@john4.delete
		end 
	end 
end 