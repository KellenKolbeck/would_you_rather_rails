class Comment < ActiveRecord::Base
  belongs_to :questions

  validates :comment_content, presence: true
end
