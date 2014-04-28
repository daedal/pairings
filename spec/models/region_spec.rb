require 'spec_helper'

describe Region, 'associations' do
  it { expect(subject).to have_many(:appellations) }
  it { expect(subject).to have_many(:wineries) }
end

describe Region, 'validations' do
  it { expect(subject).to validate_presence_of(:name) }
end
