module Moovy
  class Movie
    class << self
      def search(phrase)

      end

      protected
      def connection
        conn ||= Faraday.new(:url => 'http://data.tmsapi.com/v1') do |faraday|
          faraday.request  :url_encoded             # form-encode POST params
          faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
      end
    end
  end
end
