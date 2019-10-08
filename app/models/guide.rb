class Guide < ApplicationRecord
  belongs_to :editorial
  has_many :guide_items
end
