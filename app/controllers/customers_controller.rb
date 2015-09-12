class CustomersController < ApplicationController
  def show
  end

  def new
    @customer = Customer.new
  end

  def create
    customer = Customer.new params[:customer].permit(:email, :name)
    if customer.save
      render "Thanks for your details"
    else
      render "Details did not save"
    end
  end

  def delete
  end

  def index
  end
end
