class CreateExperiments < ActiveRecord::Migration[5.1]
  def change
    create_table :experiments do |t|
      t.date :date
      t.string :result
      t.references :test, foreign_key: true
      t.references :sample, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
