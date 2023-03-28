class Employer < ApplicationRecord
    validates :username, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, length: {minimum: 8}
    has_secure_password

    has_many :employees, through: :job_listings
    has_many :job_listings
end
