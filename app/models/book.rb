class Book < ApplicationRecord
    has_many :clients, through: :rents
    belongs_to :publisher
    belongs_to :genre
    belongs_to :language
    belongs_to :author
    has_one_attached :cover
end
