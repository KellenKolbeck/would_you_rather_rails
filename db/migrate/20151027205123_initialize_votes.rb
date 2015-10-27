class InitializeVotes < ActiveRecord::Migration
  def change
    change_column_default(:questions, :voteA, 0)
    change_column_default(:questions, :voteB, 0)
  end
end
