class Doctor < ApplicationRecord
  belongs_to :vaccination_center
  validates_presence_of :name, :speciality
end
