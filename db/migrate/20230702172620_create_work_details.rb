class CreateWorkDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :work_details do |t|
      t.references :patientWork, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
