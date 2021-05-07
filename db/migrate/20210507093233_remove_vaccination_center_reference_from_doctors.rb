class RemoveVaccinationCenterReferenceFromDoctors < ActiveRecord::Migration[6.0]
  def change
    change_table :doctors do |t|
      t.remove_references :vaccination_center
    end
  end
end
