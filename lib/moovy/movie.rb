require 'faraday'
require 'json'

module Moovy
  class Movie
    attr_reader :title

      def initialize(attributes = {})
        @title = attributes['title']
      end

    class << self
      def search(zip, startDate, radius)
        res = connection.get '/v1/movies/showings', {
          zip: zip,
          startDate: startDate,
          radius: radius,
          api_key: Moovy.api_key
        }

        res = JSON.parse(res.body)
        if res
          res.map do |res_hash|
            new(res_hash)
          end
        end
      end

      protected
      def connection
        conn ||= Faraday.new(:url => 'http://data.tmsapi.com') do |faraday|
          faraday.request  :url_encoded             # form-encode POST params
          faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
      end
    end
  end
end
