class AddSpecificGravityToJuiceShipments < ActiveRecord::Migration[5.1]
  def change
    add_column :juice_shipments, :specific_gravity, :decimal
  end
end
