class RemoveOptionsFromRanktables < ActiveRecord::Migration[5.2]
  def change
    remove_column :ranktables, :options, :string
  end
end
