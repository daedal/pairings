require 'spec_helper'

describe Wine, 'associations' do
end

describe Wine, 'validations' do
  it { expect(subject).to validate_presence_of(:vintage) }
  it { expect(subject).to validate_presence_of(:winery) }
  it { expect(subject).to validate_presence_of(:appellation) }
  it { expect(subject).to validate_presence_of(:variety) }
end
