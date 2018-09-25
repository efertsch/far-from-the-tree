class CreateExperiments < ActiveRecord::Migration[5.1]
  def change
    create_table :experiments do |t|
      t.references :sample, foreign_key: true
      t.references :test, foreign_key: true
      t.date :date
      t.integer :value
      t.text :notes

      t.timestamps
    end
  end
end
