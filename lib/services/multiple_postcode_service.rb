require 'httparty'
require 'json'

class MultiplePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def multiple_postcode_request(postcodes_array)
    @multiple_postcode_data = JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

  def retrieve_status_code
    @multiple_postcode_data['status']
  end

  def print_response
    p @multiple_postcode_data
  end
end
