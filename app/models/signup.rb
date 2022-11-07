class Signup < ApplicationRecord

    validate :time_slot_available
    belongs_to :camper
    belongs_to :activity


    def time_slot_available
        if self.activity.signups.any? {|signup| signup.time == 23 && self.time ==23}
            errors.add(:time, "Time slot is not available")
        end
    end
end
