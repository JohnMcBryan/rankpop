class Option < ApplicationRecord
  belongs_to :ranktable
  has_one_attached :picture
end

# TODO Need to do a check on the picture upload to make sure that its an image file, and that it does not take up so much space
