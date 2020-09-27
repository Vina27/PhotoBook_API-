class Book < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy  
  has_many :categories 
end
