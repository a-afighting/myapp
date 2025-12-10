class Board < ApplicationRecord
    belongs_to :user

    validates :tittle, presence: true
    validates :description, presence: true
end
