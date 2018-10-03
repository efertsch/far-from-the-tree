class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.references :test, foreign_key: true
      t.references :sample, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
