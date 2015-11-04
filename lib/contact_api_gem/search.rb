require 'httparty'

module ContactApiGem
 class Search

  attr_accessor :status, :response, :message

  def initialize(options = {})
    search(options)
  end

  def search(options)
    http_response = HTTParty.get(ContactApiGem::BASE_URL, {query: options.merge(ContactApiGem::DEFAULT_PARAMS)})
    @status = http_response.code
    @message = http_response.message
    @response = http_response.parsed_response
  end

  def success?
    status == 200 ? true : false
  end

  # def get_names
  #   response['contacts'].map do |r|
  #     # {r['name'] => r["id"]} 
  #     "Contact: #{r['name']}, id: #{r["id"]}"   
  #   end
  # end

 end
end