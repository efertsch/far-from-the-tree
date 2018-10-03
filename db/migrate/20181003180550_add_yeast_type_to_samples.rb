class AddYeastTypeToSamples < ActiveRecord::Migration[5.1]
  def change
    add_column :samples, :yeast_type, :string
  end
end
