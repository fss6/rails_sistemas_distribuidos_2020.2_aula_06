class Post < ApplicationRecord
  belongs_to :author
  has_many :comments
  accepts_nested_attributes_for :comments

  validates :title, presence: true 
  validates :title, uniqueness: true
  validates :content, presence: true 
end
