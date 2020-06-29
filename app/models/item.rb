class Item < ApplicationRecord
  has_many :footprints, through: :lists
end
