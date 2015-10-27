class ChangeColumnNames < ActiveRecord::Migration
  def change

    rename_column :questions, :vote_a, :vote_a
    rename_column :questions, :vote_b, :vote_b

  end
end
