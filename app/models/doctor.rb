class Doctor < ApplicationRecord
  has_and_belongs_to_many :vaccination_centers
  validates_presence_of :name, :speciality
end
