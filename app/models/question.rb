class Question < ActiveRecord::Base
  has_many :comments

  validates :title, presence: true
  validates :optionA, presence: true
  validates :optionB, presence: true
end
