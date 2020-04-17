class AddColumnsToSheet < ActiveRecord::Migration[6.0]
  def change
    add_column :sheets, :rim_tape, :string
    add_column :sheets, :rim_erd, :integer
  end
end
