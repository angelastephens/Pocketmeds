class Refill < ApplicationRecord
    belongs_to :prescription, counter_cache: :refill_count
    validate :refill_counter, :on => :create 

    def refill_counter
        if self.prescription.refills.count >= self.prescription.refill_amount
            errors.add(:base, "No refills left")
        end
    end 
end
