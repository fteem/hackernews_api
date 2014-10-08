require 'json'

module HackernewsApi
  class Client
    def self.fetch(entity_type, id)
      raw_json = RestClient.get("#{HackernewsApi::API_URL}/#{HackernewsApi::API_VERSION}/#{entity_type.to_s}/#{id}.json?print=pretty")
      JSON.parse(raw_json)
    end
  end
end
