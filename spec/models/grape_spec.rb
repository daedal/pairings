require 'spec_helper'

describe Grape, 'associations' do
  it { expect(subject).to have_many(:wines) }
end

describe Grape, 'validations' do
  it { expect(subject).to validate_presence_of(:varietal) }
end
