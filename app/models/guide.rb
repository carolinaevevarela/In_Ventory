class Guide < ApplicationRecord
  belongs_to :editorial
  has_many :books
end
