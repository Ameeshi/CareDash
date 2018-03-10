module Contexts
    module DoctorContexts
        def create_doctors
          @john = FactoryBot.create(:doctor)
          @jane  = FactoryBot.create(:doctor, name: "Dr. Jane Smith")
          @smith = FactoryBot.create(:doctor, name: "Dr. Smith Morra")
          @levi       = FactoryBot.create(:doctor, name: "Dr. Levi Walker")
          @ameeshi    = FactoryBot.create(:doctor, name: "Dr. Ameeshi Goel")
          @dina       = FactoryBot.create(:doctor, name: "Dr. Dina Amouzigh")
        end

        def delete_doctors
          @john.delete
          @jane.delete
          @smith.delete
          @levi.delete
          @ameeshi.delete
          @dina.delete
        end
    end
end