class SamplesController < ApplicationController
  before_action :authenticate_user!

  def index
    @samples = Samples.all
  end
  
end
