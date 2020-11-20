class User < ApplicationRecord
    has_many :prescriptions
    has_many :medications, -> {distinct}, through: :prescriptions
    has_many :refills, through: :prescriptions
    has_secure_password   #macros gives authentica method, password equals and validates presences of password
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone_number, presence: true
    validates :email_address, presence: true 
end
