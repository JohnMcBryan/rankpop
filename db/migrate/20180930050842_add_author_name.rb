class AddAuthorName < ActiveRecord::Migration[5.2]
  def change
    rename_column :Ranktables, :author, :authorName
  end
end
