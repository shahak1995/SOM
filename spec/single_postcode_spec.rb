require 'spec_helper'

describe Postcodesio do

  context 'requesting information from the single service works correctly' do
    before(:all) do
      @single_postcode_service = Postcodesio.new.single_postcode_service
      @single_postcode_service.single_postcode_request('N16TD')
    end 

    it 'should respond with a status code of 200' do
      expect(@single_postcode_service.retrieve_status_code).to eq 200
    end

    it 'should retrieve a string data type within the postcode field' do
      expect(@single_postcode_service.retrieve_postcode).to be_kind_of(String)
    end

    it 'should retrieve an integer data type within the quality field' do
      expect(@single_postcode_service.retrieve_quality).to be_kind_of(Integer)
    end

    it 'should retrieve an integer data type within the eastings field' do
      expect(@single_postcode_service.retrieve_eastings).to be_kind_of(Integer)
    end

    it 'should retrieve an integer data type within the northings field' do
      expect(@single_postcode_service.retrieve_northings).to be_kind_of(Integer)
    end

    it 'should retrieve a string data type within the country field' do
      expect(@single_postcode_service.retrieve_country).to be_kind_of(String)
    end

    it 'should retrieve a string data type within the nhs field' do
      expect(@single_postcode_service.retrieve_nhs).to be_kind_of(String)
    end

    it 'should retrieve the value of the longitude field' do
      expect(@single_postcode_service.retrieve_longitude).to be_kind_of(Float)
    end

    it 'should retrieve the value of the latitude field' do
      expect(@single_postcode_service.retrieve_latitude).to be_kind_of(Float)
    end

    it 'should retrieve the string data type of the region field' do
      expect(@single_postcode_service.retrieve_european_electoral_region).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the trust field' do
      expect(@single_postcode_service.retrieve_trust).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the region field' do
      expect(@single_postcode_service.retrieve_region).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the lsoa field' do
      expect(@single_postcode_service.retrieve_lsoa).to be_kind_of(String)
    end

    it 'should retrieve the string data type of the msoa field' do
      expect(@single_postcode_service.retrieve_msoa).to be_kind_of(String)
    end
  end
end
