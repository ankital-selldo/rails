class Article < ApplicationRecord
  validates :title, presence: true

  validates :description, presence: true, length: {minimum: 5, message: "Length of %{value} must be greater than 5"}

  has_many :comments
end