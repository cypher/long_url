require 'json'
require 'net/http'
require 'cgi'
require 'enumerator'

module LongUrl
  extend self

  # Longens a shortened URL by passing it to the
  # Long URL Please API (http://www.longurlplease.com/)
  #
  # Can either be called with a single URL, or an array
  # of URLs.
  #
  # Returns a Hash where the keys are the shortened URLs,
  # and the values are the longened URLs.
  def longen(urls)
    # Make sure it's an array
    urls = [*urls]
    result = {}

    # We can pass 10 URLs at once
    urls.each_slice(10) do |the_urls|
      query_string = the_urls.map{|url| "q=#{url}"}.join("&")
      response = Net::HTTP.get(URI.parse("http://longurlplease.appspot.com/api/v1.1?#{query_string}"))

      result.merge!(JSON.parse(response))
    end

    result
  end
end
