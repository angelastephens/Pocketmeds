class Medication < ApplicationRecord
    has_many :prescriptions
    has_many :users, -> {distinct}, through: :prescriptions #join model is prescriptions-joines users and prescriptions


    def self.default_scope #default scope to return medcations in alphabetical order
        order(:name => "ASC")
    end
end
