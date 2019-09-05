class Editorial < ApplicationRecord
  validates :business_name, :rut, :address, :contact, :phone, :email, presence: true
end
