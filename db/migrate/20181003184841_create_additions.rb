class CreateAdditions < ActiveRecord::Migration[5.1]
  def change
    create_table :additions do |t|
      t.string :chemical_name
      t.string :amount
      t.date :date
      t.references :sample, foreign_key: true

      t.timestamps
    end
  end
end
