class Prescription < ApplicationRecord
    belongs_to :user 
    belongs_to :medication
    has_many :refills
    validates :refill_amount, presence: true
    validates :dosage, presence: true
    validates :quantity, presence: true 

    def self.alphabetical # scope to return medcations in alphabetical order
        Prescription.includes(:medication).order("medications.name ASC") #includes sql query that pulls prescriptions AND their names instead of two querys)
    end
end
