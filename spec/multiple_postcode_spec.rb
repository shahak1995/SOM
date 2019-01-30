require 'spec_helper'

describe Postcodesio do
  context 'requesting information from the multiple service works correctly from the first postcode' do
    before(:all) do
      @multiple_postcode_service_one = Postcodesio.new.multiple_postcode_service
      @multiple_postcode_service_one.multiple_postcode_request(['N16TD'])
    end

  context 'requesting information from the multiple service works correctly from the second postcode' do
    before(:all) do
      @multiple_postcode_service_two = Postcodesio.new.multiple_postcode_service
      @multiple_postcode_service_two.multiple_postcode_request(['SW155DU'])
    end

    it 'should respond with a status code of 200' do
      expect(@multiple_postcode_service_one.retrieve_status_code).to eq 200
    end

    it 'should respond with a status code of 200' do
      expect(@multiple_postcode_service_two.retrieve_status_code).to eq 200
    end

    it 'should retrieve a string data type within the postcode field' do
      expect(@multiple_postcode_service_one.retrieve_postcode).to be_kind_of(String)
    end

    it 'should retrieve a string data type within the postcode field' do
      expect(@multiple_postcode_service_two.retrieve_postcode).to be_kind_of(String)
    end

    it 'should retrieve an integer data type within the quality field' do
      expect(@multiple_postcode_service_one.retrieve_quality).to be_kind_of(Integer)
    end

    it 'should retrieve an integer data type within the eastings field' do
      expect(@multiple_postcode_service_one.retrieve_eastings).to be_kind_of(Integer)
    end

    it 'should retrieve an integer data type within the northings field' do
      expect(@multiple_postcode_service_one.retrieve_northings).to be_kind_of(Integer)
    end

    it 'should retrieve a string data type within the country field' do
      expect(@multiple_postcode_service_one.retrieve_country).to be_kind_of(String)
    end

    it 'should retrieve a string data type within the nhs field' do
      expect(@multiple_postcode_service_one.retrieve_nhs).to be_kind_of(String)
    end

    it 'should retrieve the value of the longitude field' do
      expect(@multiple_postcode_service_one.retrieve_longitude).to be_kind_of(Float)
    end

    it 'should retrieve the value of the latitude field' do
      expect(@multiple_postcode_service_one.retrieve_latitude).to be_kind_of(Float)
    end

    it 'should retrieve the string data type of the region field' do
      expect(@multiple_postcode_service_one.retrieve_european_electoral_region).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the trust field' do
      expect(@multiple_postcode_service.retrieve_trust).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the region field' do
      expect(@multiple_postcode_service.retrieve_region).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the lsoa field' do
      expect(@multiple_postcode_service.retrieve_lsoa).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the msoa field' do
      expect(@multiple_postcode_service.retrieve_msoa).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the incode field' do
      expect(@multiple_postcode_service.retrieve_incode).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the outcode field' do
      expect(@multiple_postcode_service.retrieve_outcode).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the constituency field' do
      expect(@multiple_postcode_service.retrieve_constituency).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the admin district field' do
      expect(@multiple_postcode_service.retrieve_admin_district).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the parish field' do
      expect(@multiple_postcode_service.retrieve_parish).to be_kind_of(String)
    end

    it 'should be either a string data type or null' do
      expect(@multiple_postcode_service.retrieve_admin_county).to be_kind_of(String).or be(nil)
    end

    it 'should retrieve the string data type of the ward field' do
      expect(@multiple_postcode_service.retrieve_admin_ward).to be_kind_of(String)
    end

    it 'should be either a string data type or null' do
      expect(@multiple_postcode_service.retrieve_ced).to be_kind_of(String).or be(nil)
    end

    it 'should retrieve the string data type of the ccg field' do
      expect(@multiple_postcode_service.retrieve_ccg).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the nuts field' do
      expect(@multiple_postcode_service.retrieve_nuts).to be_kind_of(String)
    end

    it 'should be a hash within the codes field' do
      expect(@multiple_postcode_service.retrieve_codes).to be_kind_of(Hash)
    end

    it 'should retrieve a string data type from the district field within the codes' do
      expect(@multiple_postcode_service.retrieve_codes_admin_district).to be_kind_of(String)
    end

    it 'should retrieve a string data type from the county field within the codes' do
      expect(@multiple_postcode_service.retrieve_codes_admin_county).to be_kind_of(String)
    end

    it 'should retrieve a string data type from the ward field within the codes' do
      expect(@multiple_postcode_service.retrieve_codes_admin_ward).to be_kind_of(String)
    end

    it 'should retrieve a string data type from the parish field within the codes' do
      expect(@multiple_postcode_service.retrieve_codes_parish).to be_kind_of(String)
    end

    it 'should retrieve a string data type from the constituency field within the codes' do
      expect(@multiple_postcode_service.retrieve_codes_constituency).to be_kind_of(String)
    end

    it 'should retrieve a string data type from the ccg field within the codes' do
      expect(@multiple_postcode_service.retrieve_codes_ccg).to be_kind_of(String)
    end

    it 'should retrieve a string data type from the ced field within the codes' do
      expect(@multiple_postcode_service.retrieve_codes_ced).to be_kind_of(String)
    end

    it 'should retrieve a string data type from the nuts field within the codes' do
      expect(@multiple_postcode_service.retrieve_codes_nuts).to be_kind_of(String)
    end
   end
  end
end
