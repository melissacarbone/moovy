require "moovy/version"

require "moovy/movie"

module Moovy
  def self.api_key
    @api_key
  end

  def self.api_key=(token)
    @api_key = token
  end
end
