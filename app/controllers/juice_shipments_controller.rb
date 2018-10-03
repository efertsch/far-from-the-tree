class JuiceShipmentsController < ApplicationController
  def index
    @shipments = JuiceShipment.all.order(:date_received)
  end

  def new
    @juice_shipment = JuiceShipment.new
  end

  def create
    @juice_shipment = JuiceShipment.new(juice_shipment_params)
    if @juice_shipment.save
      redirect_to juice_shipments_path
    else
      render :new
    end
  end

  private

  def juice_shipment_params
    params.require(:juice_shipment).permit(:date_received, :apple_composition, :specific_gravity)
  end
end
