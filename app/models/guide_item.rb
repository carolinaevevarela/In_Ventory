class GuideItem < ApplicationRecord
  belongs_to :guide
  belongs_to :book
end
