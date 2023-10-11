class Publisher < ApplicationRecord
  has_many :comics, dependent: :destroy
  validates :name, :founded, presence: true
  validates :founded, numericality: { only_integers: true }
end
