class VaccinationCenter < ApplicationRecord
  has_many :doctors, dependent: :delete_all
  validates_presence_of :name, :address
end
