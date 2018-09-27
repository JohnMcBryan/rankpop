class CreateRanktables < ActiveRecord::Migration[5.2]
  def change
    create_table :ranktables do |t|
      t.string :title
      t.string :description
      t.string :author
      t.integer :count
      t.text :options, array: true

      t.timestamps
    end
  end
end
