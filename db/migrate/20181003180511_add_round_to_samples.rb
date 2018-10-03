class AddRoundToSamples < ActiveRecord::Migration[5.1]
  def change
    add_column :samples, :round, :integer
  end
end
