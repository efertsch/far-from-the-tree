class CreatePitches < ActiveRecord::Migration[5.1]
  def change
    create_table :pitches do |t|
      t.string :yeast_type
      t.boolean :lees?
      t.integer :round

      t.timestamps
    end
  end
end
