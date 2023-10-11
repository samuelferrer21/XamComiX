class Publisher < ApplicationRecord
  validates :name, :founded, presence: true
  validates :founded, numericality: { only_integers: true }
end
