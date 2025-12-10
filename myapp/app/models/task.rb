class Task < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy


  validates :title, presence: true
  validates :content, presence: true
  validates :due_date, presence: true
end
