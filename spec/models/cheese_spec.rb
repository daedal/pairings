require 'spec_helper'

describe Cheese, 'associations' do
  it { expect(subject).to have_and_belong_to_many(:traits) }
  it { expect(subject).to have_and_belong_to_many(:wines) }
end

describe Cheese, 'validations' do
  it { expect(subject).to validate_presence_of(:name) }
end
