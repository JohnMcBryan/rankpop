class AddPointsToVotes < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :points, :integer
  end
end
