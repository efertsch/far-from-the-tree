class CreateJuiceShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :juice_shipments do |t|
      t.date :date_received
      t.string :apple_composition
      t.decimal :specific_gravity

      t.timestamps
    end
  end
end
