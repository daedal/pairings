require 'spec_helper'

describe Trait, 'associations' do
  it { expect(subject).to have_and_belong_to_many(:cheeses) }
  it { expect(subject).to have_and_belong_to_many(:wines) }
end

describe Trait, 'validations' do
  it { expect(subject).to validate_presence_of(:name) }
end
