class SamplesController < ApplicationController
  before_action :authenticate_user!

  def index
    @samples = Sample.all.order(:id)
  end

  def new
    @sample = Sample.new
  end

  def create
    @sample = Sample.new
    if sample.save
      redirect_to samples_path
    else
      render :new
    end
  end

  private

  def sample_params
    params.require(:sample).permit(:start_date, :tote_size, :yeast_type, :pitch_round, :batch_id, :group_id)
  end

end
