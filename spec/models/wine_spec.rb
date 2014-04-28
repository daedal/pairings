require 'spec_helper'

describe Wine, 'associations' do
  it { expect(subject).to belong_to(:grape) }
  it { expect(subject).to belong_to(:winery) }
  
  it { expect(subject).to have_and_belong_to_many(:cheeses) }
  it { expect(subject).to have_and_belong_to_many(:traits) }
end

describe Wine, 'validations' do
  it { expect(subject).to validate_presence_of(:category_type) }
  it { expect(subject).to validate_presence_of(:grape_id) }
  it { expect(subject).to validate_presence_of(:vintage) }
  it { expect(subject).to validate_presence_of(:winery_id) }
end
