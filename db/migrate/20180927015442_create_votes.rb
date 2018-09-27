class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :tableID
      t.integer :userID
      t.string :option
      t.integer :rank

      t.timestamps
    end
  end
end
