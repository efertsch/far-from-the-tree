class ChangeBatchesToJuiceShipments < ActiveRecord::Migration[5.1]
  def change
    rename_table :batches, :juice_shipments
  end
end
