class Book < ApplicationRecord
  has_many :categories
  belongs_to :guide #Agregar relación con GuideItem
  validates :titulo, :autor, :editorial, presence: true
  validates :isbn, presence: true
end
