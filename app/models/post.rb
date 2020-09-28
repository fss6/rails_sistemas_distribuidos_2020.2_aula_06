class Post < ApplicationRecord
  belongs_to :author

  validates :title, presence: true 
  validates :title, uniqueness: true
  validates :content, presence: true 
end
