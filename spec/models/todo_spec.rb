require 'rails_helper'

RSpec.describe Todo, type: :model do
  it "has a valid factory" do
    expect(build(:todo)).to be_valid
  end
  
  it "description is required" do
    expect(build(:todo, description: '')).not_to be_valid
    
    todo = Todo.new(description: '')
    todo.valid?
    expect(todo.errors[:description]).to include("can't be blank")
  end
end
