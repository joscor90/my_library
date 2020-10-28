class Book < ApplicationRecord
    enum state: [:prestado, :en_estante]
end