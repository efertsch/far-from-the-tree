class AddNotesToAdditions < ActiveRecord::Migration[5.1]
  def change
    add_column :additions, :notes, :text
  end
end
