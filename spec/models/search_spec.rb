require 'rails_helper'

RSpec.describe Search, type: :model do
  let(:file_key) { 'PAalkr4Lvt9nTEJTmFMphB' }
  let(:nodes) { [ FactoryBot.build(:node) ] }
  let(:query_string) { "Doc" }
  subject { described_class }
  let(:created_subject) { }

  it "should respond to the #new method" do
    expect(subject).to respond_to(:new)
  end

  it "should respond to the #filter_to_pattern" do
    expect(subject.new(sample_space: nodes, value: query_string)).to respond_to(:results)
  end

  it "should succeed if given no arguments" do
    expect(subject.new.results).to eq []
  end
end
