class List < ApplicationRecord
  belongs_to :footprint
  has_many :items
  #should be has_many items...
  accepts_nested_attributes_for :items
end
