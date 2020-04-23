class Article < ApplicationRecord
  # if article is deleted all comments also should be deleted --> dependent
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
end
