class AddGroupToSamples < ActiveRecord::Migration[5.1]
  def change
    add_column :samples, :group, :string
  end
end
