class Book < ApplicationRecord
  has_many :categories
  validates :titulo, :autor, :editorial, presence: true
  validates :isbn, presence: true
end
