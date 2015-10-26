class Question < ActiveRecord::Base
  validates :title, presence: true
  validates :optionA, presence: true
  validates :optionB, presence: true
end
