require 'rails_helper'

RSpec.describe ModelA, type: :model do
  it { expect(ModelA.count).to eq(100) }
  it { expect(ModelA.create!).to be_a(ModelA) }
end
