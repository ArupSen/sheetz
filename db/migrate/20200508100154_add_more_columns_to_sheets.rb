class AddMoreColumnsToSheets < ActiveRecord::Migration[6.0]
  def change
    add_column :sheets, :spoke_info, :string
    add_column :sheets, :pattern, :string
    add_column :sheets, :new_build, :boolean, default: true
  end
end
