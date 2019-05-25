class Ranktable < ApplicationRecord
  has_many :option, dependent: :destroy
  accepts_nested_attributes_for :option
end
