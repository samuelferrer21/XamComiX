class Writer < ApplicationRecord
  has_many :comics, dependent: :destroy
  valdates :writer, presence: true
end
