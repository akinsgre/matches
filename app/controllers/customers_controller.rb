class CustomersController < ApplicationController
  def index
    @customers = Customer.find(:all)
  end

end
