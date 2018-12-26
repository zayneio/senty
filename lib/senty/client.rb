require 'net/http'
require 'uri'
require 'httparty'
require 'json'

API_URL = "https://senty.xyz/api/v1?search="

module Senty
  class Client

    attr_accessor :api_key

    def analyze(search)
			uri = URI.parse("#{API_URL}#{search}")
			request = Net::HTTP::Post.new(uri)
			request["Authorization"] = "Bearer #{self.api_key}"

			req_options = {
			  use_ssl: uri.scheme == "https",
			}

			response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
			  http.request(request)
			end
    	
    	JSON.parse(response.body)
    end

  end
end