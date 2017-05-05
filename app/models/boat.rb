class Boat < ApplicationRecord
  has_and_belongs_to_many :jobs
  validates_presence_of :name, :container_capacity, :location
  validates :name, uniqueness: true
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
