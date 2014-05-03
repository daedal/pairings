require 'spec_helper'

describe Winery, 'associations' do
  it { expect(subject).to belong_to(:appellation) }
  it { expect(subject).to belong_to(:region) }

  it { expect(subject).to have_many(:wines) }
end

describe Winery, 'validations' do
  it { expect(subject).to validate_presence_of(:appellation_id) }
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_presence_of(:region_id) }
end

describe Winery, '#name_as_a_title' do
  it 'titleizes the winery name' do
    winery = build(:winery, name: 'robert mondavi')

    expect(winery.name_as_a_title).to eq 'Robert Mondavi'
  end
end
