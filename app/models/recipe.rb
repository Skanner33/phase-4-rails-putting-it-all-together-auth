class Recipe < ApplicationRecord
    belongs_to :user

    validates :title, presence: true
    validates :instructions, { length: { minimum: 50 }}, uniqueness: true, presence: true
end
