class Book < ApplicationRecord
    validates :title, :author, :status, :borrowed_at, :returned_at, presence: true
    enum status: [:prestado, :en_estante]
end