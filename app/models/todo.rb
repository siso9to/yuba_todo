class Todo < ApplicationRecord
  validates :description, presence: true, length: { maximum: 100 }
  validates :detail, length: { maximum: 2000 }
end
