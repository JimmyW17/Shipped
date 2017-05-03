class Boat < ApplicationRecord
  has_and_belongs_to_many :jobs
  validates_presence_of :name, :container_capacity, :location
end
