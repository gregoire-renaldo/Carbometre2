class Item < ApplicationRecord
  has_many :footprints, through: :lists
  belongs_to :list
end
