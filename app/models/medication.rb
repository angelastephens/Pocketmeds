class Medication < ApplicationRecord
    has_many :prescriptions
    has_many :users, -> {distinct}, through: :prescriptions


    def self.default_scope #default scope to return medcations in alphabetical order
        order(:name => "ASC")
    end
end
