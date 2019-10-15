class Book < ApplicationRecord
  has_many :categories
  has_many :guide_items
  belongs_to :guide
  validates :title, :author, :editorial, presence: true
  validates :isbn, presence: true
end
