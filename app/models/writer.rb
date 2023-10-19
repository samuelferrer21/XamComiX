class Writer < ApplicationRecord
  has_many :comics, dependent: :destroy
  validates :first_name, :last_name, presence: true
end
