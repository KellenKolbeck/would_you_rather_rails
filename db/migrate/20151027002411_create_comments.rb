class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :comment_content, :string
      t.column :question_id, :integer

      t.timestamps
    end
  end
end
