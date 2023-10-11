class Comic < ApplicationRecord
  belongs_to :publisher
  belongs_to :writer
  belongs_to :edition
  belongs_to :format
end
