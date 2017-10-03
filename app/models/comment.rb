class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true

  validates :author, presence: true, format: { with: /([A-Z][\w-]*(\s+[A-Z][\w-]*)+)/, message: "two words with capital letters" }
  validates :content, presence: true
end
