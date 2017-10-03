class Post < ApplicationRecord
  belongs_to :category
  has_many :comments, as: :commentable, dependent: :destroy

  validates :name, presence: true
  validates :content, presence: true
end
