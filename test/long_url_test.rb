require 'test_helper'
require 'rr'

class LongUrlTest < Test::Unit::TestCase
  context "LongUrl#longen" do
    setup do
      mock(Net::HTTP).get(anything).at_least(1) {
        %Q{{"http:\/\/bit.ly\/enAo": "http:\/\/www.boasas.com\/?c=1030", "http:\/\/short.ie\/bestxkcd": "http:\/\/razvan784.blogspot.com\/2007\/09\/best-of-xkcd.html"}}
      }

      @short_urls = %w(http://bit.ly/enAo http://short.ie/bestxkcd)
    end

    should "work with single urls and arrays" do
      assert_nothing_raised do
        LongUrl.longen(@short_urls.first)
        LongUrl.longen(@short_urls)
      end
    end

    should "return a hash" do
      assert_equal Hash, LongUrl.longen(@short_urls.first).class
      assert_equal Hash, LongUrl.longen(@short_urls).class
    end

    should "return the requested url" do
      result = LongUrl.longen(@short_urls.first)
      assert result.has_key?(@short_urls.first)
      assert_equal "http://www.boasas.com/?c=1030", result[@short_urls.first]
    end

    should "work with more than 10 URLs at once" do
      assert_nothing_raised do
        assert LongUrl.longen(@short_urls*20)
      end
    end
  end
end
