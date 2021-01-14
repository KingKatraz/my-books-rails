class Book < ApplicationRecord
    # join table
    belongs_to :user
    belongs_to :genre

    validates :title, presence: true
    validates :author, presence: true 
end
