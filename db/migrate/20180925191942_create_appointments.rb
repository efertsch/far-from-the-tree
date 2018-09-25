class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :description
      t.date :date
      t.references :test, foreign_key: true
      t.references :sample, foreign_key: true

      t.timestamps
    end
  end
end
