require 'spec_helper'

describe ContactApiGem::Search do

  it 'should return objects with attributes' do
    search = ContactApiGem::Search.new
    #expect search to be a search object 
    expect(search).to be_a_kind_of(ContactApiGem::Search)
    #expect object to have attributes status and responses 
    expect_attributes = %w(status response)
    expect_attributes.each do |attribute|
      expect(search).to respond_to(attribute)
    end
    #expect the status of the search to be succesful 
    expect(search.status).to eql(200)
    #expect that the response of the search return a list of contacts
    expect(search.response)
    expect(search.response["contacts"])
    expect_response_attributes = %w(id name email twitter phone birthday relationship)
    expect_response_attributes.each do |attribute|
      expect(search.response["contacts"].first).to include(attribute)
    end
    expect(expect_response_attributes.count).to eql(search.response["contacts"].first.count)
  end
end
