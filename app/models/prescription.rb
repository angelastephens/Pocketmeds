class Prescription < ApplicationRecord
    belongs_to :user 
    belongs_to :medication
    has_many :refills
    validates :refill_amount, presence: true
    validates :dosage, presence: true
    validates :quantity, presence: true 
end
