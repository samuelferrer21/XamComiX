class Format < ApplicationRecord
  has_many :comics, dependent: :destroy
  validates :format, presence: true
end
