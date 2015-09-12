class CustomersController < ApplicationController
  protect_from_forgery

  def show
  end

  def new
    @customer = Customer.new
  end

  def create
    customer = Customer.new({email: params[:email]})
    if customer.save
      render 'show'
    else
      render 'new'
    end
  end

  def delete
  end

  def index
    @customers = Customer.all
  end
end
