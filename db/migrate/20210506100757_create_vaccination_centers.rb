class CreateVaccinationCenters < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccination_centers do |t|
      t.string :name
      t.string :address
      t.string :zip

      t.timestamps
    end
  end
end
