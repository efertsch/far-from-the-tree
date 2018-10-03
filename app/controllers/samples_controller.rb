class SamplesController < ApplicationController
  before_action :authenticate_user!

  def index
    @samples = Sample.all.order(:id)
  end

end
