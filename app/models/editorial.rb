class Editorial < ApplicationRecord
  has_many :guides
  validates :business_name, :rut, :address, :contact, :phone, :email, presence: true
end
