class Job < ApplicationRecord
  has_and_belongs_to_many :boats
  validates_presence_of :description, :origin, :destination, :cost, :containers_needed
  validates_numericality_of :cost, :greater_than_or_equal_to => 1000
  validates :description, length: {minimum: 50}
end
