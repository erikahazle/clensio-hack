class AddFirstNameAndLastNameAndLaundryFreqAndLaundryForAndAddressToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
    add_column :customers, :laundry_freq, :integer
    add_column :customers, :laundry_for, :string
    add_column :customers, :address, :string
  end
end
