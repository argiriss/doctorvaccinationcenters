class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :speciality
      t.belongs_to :vaccination_center, null: false, foreign_key: true

      t.timestamps
    end
  end
end
