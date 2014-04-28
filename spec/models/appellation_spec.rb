require 'spec_helper'

describe Appellation, 'associations' do
  it { expect(subject).to belong_to(:region) }
  
  it { expect(subject).to have_many(:wineries) }
end

describe Appellation, 'validations' do
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_presence_of(:region_id) }
end
