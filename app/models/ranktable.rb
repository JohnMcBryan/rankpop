class Ranktable < ApplicationRecord
  has_many :option, dependent: :destroy
end
