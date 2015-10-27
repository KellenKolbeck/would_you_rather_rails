class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :title, :string
      t.column :optionA , :string
      t.column :optionB, :string
      t.column :vote_a, :integer
      t.column :vote_b, :integer

      t.timestamps
    end
  end
end
