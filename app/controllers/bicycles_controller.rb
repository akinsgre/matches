class BicyclesController < ApplicationController

  def index
    @bicycles = Bicycle.find(:all)
  end

end
