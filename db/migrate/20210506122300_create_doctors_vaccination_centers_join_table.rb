class CreateDoctorsVaccinationCentersJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :doctors, :vaccination_centers
  end
end
