class Category < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, as: :commentable

  validates :name, presence: true 
end
