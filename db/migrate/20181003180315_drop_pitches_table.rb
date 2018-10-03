class DropPitchesTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :pitches
  end
end
