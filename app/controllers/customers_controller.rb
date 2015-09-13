class CustomersController < ApplicationController
  protect_from_forgery

  def show
    # binding.pry
  end

  def new
    @customer = Customer.new
  end

  def create
    customer = Customer.new({email: params[:email], first_name: params[:first_name], last_name: params[:last_name], laundry_freq: params[:laundry_freq], laundry_for: params[:laundry_for], address: params[:address]})
    if customer.save
      redirect_to customer_path(customer)
    else
      render 'new'
    end
  end

  def delete
  end
end
