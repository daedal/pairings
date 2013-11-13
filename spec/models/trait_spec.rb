require 'spec_helper'

describe Trait, 'associations' do
end

describe Trait, 'validations' do
  it { expect(subject).to validate_presence_of(:name) }
end
