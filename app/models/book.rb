class Book < ApplicationRecord
  has_many :categories
  has_many :guides, through: :guide_item
  validates :title, :author, :editorial, :isbn, presence: true
end
