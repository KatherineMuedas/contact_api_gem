require 'spec_helper'

describe ContactApiGem do
  it 'has a version number' do
    expect(ContactApiGem::VERSION).not_to be nil
  end

  it 'should have the correct base url' do 
    expect(ContactApiGem::BASE_URL).to eql('http://localhost:3000/api/v1/contacts')
  end

  it 'should have the correct base url' do 
    expect(ContactApiGem::DEFAULT_PARAMS).to eql({})
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end
end
