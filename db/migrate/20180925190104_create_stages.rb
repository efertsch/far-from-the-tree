class CreateStages < ActiveRecord::Migration[5.1]
  def change
    create_table :stages do |t|
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
