class AddAuthorId < ActiveRecord::Migration[5.2]
  def change
    drop_table :ranktables

    create_table :ranktables do |t|
      t.string :title
      t.string :description
      t.string :authorName
      t.integer :authorID
      t.integer :count
      t.text :options, array: true

      t.timestamps
    end
  end
end
