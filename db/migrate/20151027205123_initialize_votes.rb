class InitializeVotes < ActiveRecord::Migration
  def change
    change_column_default(:questions, :vote_a, 0)
    change_column_default(:questions, :vote_b, 0)
  end
end
