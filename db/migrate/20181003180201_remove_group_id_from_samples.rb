class RemoveGroupIdFromSamples < ActiveRecord::Migration[5.1]
  def change
    remove_reference :samples, :group, index: true, foreign_key: true
  end
end
