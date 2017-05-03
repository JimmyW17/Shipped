class Job < ApplicationRecord
  has_and_belongs_to_many :boats
  validates_presence_of :description, :origin, :destination, :cost, :containers_needed
end
