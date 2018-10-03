class SamplesController < ApplicationController
  before_action :authenticate_user!

  def index
    @samples = Sample.all.order(:id)
  end

  def new
    @sample = Sample.new
  end

  def create
    @sample = Sample.new(sample_params)
    if @sample.save
      redirect_to samples_path
    else
      render :new
    end
  end

  def show
    @sample = Sample.find(params[:id])
  end

  private

  def sample_params
    params.require(:sample).permit(:start_date, :tote_size, :yeast_type, :round, :juice_shipment_id, :stage_id, :group)
  end

end
