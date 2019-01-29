require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  # include the base URI
  base_uri 'https://api.postcodes.io'

  def single_postcode_request(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end 

  def retrieve_status_code
    @single_postcode_data['status']
  end 

  def print_results
    p @single_postcode_data
  end 

  def retrieve_result
    @single_postcode_data['result']
  end 

  def retrieve_postcode
    retrieve_result['postcode']
  end 

  def retrieve_quality
    retrieve_result['quality']
  end

  def retrieve_eastings
    retrieve_result['eastings']
  end

  def retrieve_northings
    retrieve_result['northings']
  end

  def retrieve_country
    retrieve_result['country']
  end

  def retrieve_nhs
    retrieve_result['nhs_ha']
  end

  def retrieve_longitude
    retrieve_result['longitude']
  end

  def retrieve_latitude
    retrieve_result['latitude']
  end

  def retrieve_european_electoral_region
    retrieve_result['european_electoral_region']
  end

  def retrieve_trust
    retrieve_result['primary_care_trust']
  end

  def retrieve_region
    retrieve_result['region']
  end

  def retrieve_lsoa
    retrieve_result['lsoa']
  end

  def retrieve_msoa
    retrieve_result['msoa']
  end

  def retrieve_incode
    retrieve_result['region']
  end

  def retrieve_outcode
    retrieve_result['region']
  end

  def retrieve_region
    retrieve_result['region']
  end

  def retrieve_region
    retrieve_result['region']
  end

  def retrieve_region
    retrieve_result['region']
  end

  def retrieve_region
    retrieve_result['region']
  end

  def retrieve_region
    retrieve_result['region']
  end

  def retrieve_region
    retrieve_result['region']
  end
end
