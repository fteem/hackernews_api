require 'spec_helper'

describe HackernewsApi::Client do

  it 'fetches json from HN API' do
    VCR.use_cassette('user') do
      json = described_class.fetch(:user, 'fteem')
      expect(json['id']).to eq 'fteem'
    end
  end

end

