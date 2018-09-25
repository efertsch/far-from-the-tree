class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.date :start_date
      t.date :finish_date
      t.integer :tote_size
      t.references :batch, foreign_key: true
      t.references :group, foreign_key: true
      t.references :pitch, foreign_key: true
      t.references :stage, foreign_key: true

      t.timestamps
    end
  end
end
