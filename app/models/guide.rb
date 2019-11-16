class Guide < ApplicationRecord
  belongs_to :editorial
  has_many :guide_items
  has_many :books, through: :guide_item
end
