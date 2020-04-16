class CreateSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :sheets do |t|
      t.string :customer
      t.date :received_date
      t.string :rims
      t.text :info
      t.integer :holes

      t.timestamps
    end
  end
end
