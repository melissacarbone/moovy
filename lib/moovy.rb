require "moovy/version"

require "moovy/movie"

module Moovy
  def api_key
    @api_key
  end

  def api_key=(token)
    @api_key = token
  end
end
