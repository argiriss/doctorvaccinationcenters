class VaccinationCenter < ApplicationRecord
  has_and_belongs_to_many :doctors
  validates_presence_of :name, :address
end
