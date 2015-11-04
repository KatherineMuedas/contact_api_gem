require 'httparty'

module ContactApiGem
 class Search

  attr_accessor :status, :message, :contacts

  def initialize(options = {})
    search(options)
  end

  def search(options)
    http_response = HTTParty.get(ContactApiGem::BASE_URL, {query: options.merge(ContactApiGem::DEFAULT_PARAMS)})
    @status = http_response.code
    @message = http_response.message
    response = http_response.parsed_response
    @contacts = ContactApiGem::Contact.proccess_batch(response['contacts'])

  end

  def success?
    status == 200 ? true : false
  end

  # def get_names
  #   contacts.map do |contact|
  #     # {contact['name'] => contact["id"]} 
  #     # "Contact: #{contact.name}, id: #{contact.id}" 
  #   end
  # end

 end
end