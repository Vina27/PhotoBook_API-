class User < ApplicationRecord
    has_many :books
    has_many :comments
    has_many :photos, through: :books
end
