class User < ApplicationRecord
    has_many :reviews

    validates :username, uniqueness: true

    has_secure_password
end
