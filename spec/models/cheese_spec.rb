require 'spec_helper'

describe Cheese, 'associations' do
end

describe Cheese, 'validations' do
  it { expect(subject).to validate_presence_of(:name) }
end
