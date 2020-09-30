class Photo < ApplicationRecord
  belongs_to :book 
  has_many :comments

  after_initialize :init

  def init
    `self.likes = 0 if self.likes.nil?
    # if self.likes == null 
    #   self.likes = 0 
    # end 
  end


end
