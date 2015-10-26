class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :title, :string
      t.column :optionA , :string
      t.column :optionB, :string
      t.column :voteA, :integer
      t.column :voteB, :integer

      t.timestamps
    end
  end
end
