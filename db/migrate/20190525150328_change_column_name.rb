class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :options, :tableID, :ranktable_id
  end
end
