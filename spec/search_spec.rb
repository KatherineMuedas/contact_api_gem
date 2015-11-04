require 'spec_helper'

describe ContactApiGem::Search do

  it 'should return objects with attributes' do
    search = ContactApiGem::Search.new
    #expect search to be a search object 
    expect(search).to be_a_kind_of(ContactApiGem::Search)
    #expect object to have attributes status and responses 
    expect_attributes = %w(status message contacts)
    expect_attributes.each do |attribute|
      expect(search).to respond_to(attribute)
    end
    #expect the status of the search to be successful 
    expect(search.status).to eql(200)
    #expect that the response of the search return a list of contacts
    expect(search.contacts)
    expect(search.contacts).to be_a_kind_of(Array)
    expect(search.contacts.first).to be_a_kind_of(ContactApiGem::Contact)
    expect_contacts_attributes = %w(id name email twitter phone birthday relationship)
    expect_contacts_attributes.each do |attribute|
      expect(search.contacts.first).to respond_to(attribute)
    end
  end
end
