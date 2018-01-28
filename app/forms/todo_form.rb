class TodoForm < Yuba::Form
  model :todo
  property :description
  property :detail

  validates :description, presence: true, length: { maximum: 100 }
  validates :detail, presence: true, length: { maximum: 1000 }
end
