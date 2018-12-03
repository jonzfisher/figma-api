require 'rails_helper'

RSpec.describe FigmaFile, type: :model do
  subject { described_class }
  let(:file_key) { 'PAalkr4Lvt9nTEJTmFMphB' }


  it "should respond to the #new method" do
    expect(subject).to respond_to(:new)
  end

  it "should respond to the #find method" do
    expect(subject).to respond_to(:find).with(1).arguments
  end
end
