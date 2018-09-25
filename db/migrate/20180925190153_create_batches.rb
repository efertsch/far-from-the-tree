class CreateBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :batches do |t|
      t.date :date_received
      t.string :apple_composition

      t.timestamps
    end
  end
end
