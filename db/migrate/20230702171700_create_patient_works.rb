class CreatePatientWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_works do |t|
      t.string :description
      t.float :estimation
      t.integer :discount
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
