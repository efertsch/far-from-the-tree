class AddAbbreviationToTests < ActiveRecord::Migration[5.1]
  def change
    add_column :tests, :abbreviation, :string
  end
end
