require 'rails_helper'

RSpec.describe Todo, type: :model do
  it "has a valid factory" do
    expect(build(:todo)).to be_valid
  end
  
  it "description is required" do
    todo = Todo.new(description: nil)
    todo.valid?
    expect(todo.errors[:description]).to include("can't be blank")
  end
end
