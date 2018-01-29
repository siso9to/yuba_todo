require 'rails_helper'

RSpec.describe Todo, type: :model do
  it "has a valid factory" do
    expect(build(:todo)).to be_valid
  end
end
