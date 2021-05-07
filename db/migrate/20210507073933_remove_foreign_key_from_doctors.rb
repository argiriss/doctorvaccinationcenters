class RemoveForeignKeyFromDoctors < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :doctors, :vaccination_centers
  end
end
