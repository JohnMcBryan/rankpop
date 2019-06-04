class Option < ApplicationRecord
  belongs_to :ranktable
  has_one_attached :picture
end
