class User < ApplicationRecord

    #validates :email, presence: true, uniqueness: true

    has_secure_password

    has_many :books
    has_many :genres, through: :books

end
