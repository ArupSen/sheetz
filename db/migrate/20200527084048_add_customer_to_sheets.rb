class AddCustomerToSheets < ActiveRecord::Migration[6.0]
  def change
    add_reference :sheets, :customer, null: false, foreign_key: true
  end
end
