class Flat < ApplicationRecord
  validates :name, :address, :description, presence: true
  validates :price_per_night, :number_of_guests, numericality: { greater_than: 0 }
end
