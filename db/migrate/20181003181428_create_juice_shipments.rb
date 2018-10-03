class CreateJuiceShipments < ActiveRecord::Migration[5.1]
  def change
    create_table :juice_shipments do |t|

      t.timestamps
    end
  end
end
