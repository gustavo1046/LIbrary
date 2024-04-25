class Client < ApplicationRecord
    has_many :books, through: :rents
end
