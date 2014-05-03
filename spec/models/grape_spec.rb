require 'spec_helper'

describe Grape, 'associations' do
  it { expect(subject).to have_many(:wines) }
end

describe Grape, 'validations' do
  it { expect(subject).to validate_presence_of(:varietal) }
end


describe Grape, '#varietal_as_a_title' do
  it 'capitalizes grape varietal' do
    grape = build(:grape, varietal: 'cabernet savignon')

    expect(grape.varietal_as_a_title).to eq "Cabernet Savignon"
  end
end
