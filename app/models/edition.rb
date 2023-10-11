class Edition < ApplicationRecord
  has_many :comics, dependent: :destroy
  validates :edition, presence: true
end
