class RemoveCustomerFromSheets < ActiveRecord::Migration[6.0]
  def change
    remove_column :sheets, :customer, :string
  end
end
