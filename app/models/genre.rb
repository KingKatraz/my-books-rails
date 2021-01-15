class Genre < ApplicationRecord

    #validates :name, presence: true

    has_many :books
    has_many :users, through: :books

end
