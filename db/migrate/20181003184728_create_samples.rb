class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.date :start_date
      t.date :finish_date
      t.integer :tote_size
      t.string :yeast_type
      t.integer :round
      t.references :juice_shipment, foreign_key: true
      t.references :stage, foreign_key: true
      t.string :group

      t.timestamps
    end
  end
end
