class User < ApplicationRecord
    has_many :recipes
    has_many :teas, through: :recipes
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
end
