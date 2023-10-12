class Writer < ApplicationRecord
  has_many :comics, dependent: :destroy
  validates :writer, presence: true
end
