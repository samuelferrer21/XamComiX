class Comic < ApplicationRecord
  belongs_to :publisher
  belongs_to :writer
  belongs_to :edition
  belongs_to :format
  validates :title, :release_date, :publisher_id, :writer_id, :edition_id, :format_id, presence: true
end
