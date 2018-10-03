class RemovePitchIdFromSamples < ActiveRecord::Migration[5.1]
  def change
    remove_reference :samples, :pitch, index: true, foreign_key: true
  end
end
