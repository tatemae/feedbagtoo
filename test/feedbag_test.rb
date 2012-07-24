require File.dirname(__FILE__) + '/test_helper'
class FeedbagTest < ActiveSupport::TestCase

  test "Feedbag.feed? should know that an RSS url is a feed" do
    rss_url = 'http://example.com/rss/'
    Feedbag.stubs(:find).with(rss_url).returns([rss_url])

    assert Feedbag.feed?(rss_url)
  end

  test "Feedbag.feed? should know that an RSS url with parameters is a feed" do
    rss_url = "http://example.com/data?format=rss"
    Feedbag.stubs(:find).with(rss_url).returns([rss_url])

    assert Feedbag.feed?(rss_url)
  end

  test "Feedbag find should discover feeds containing atom:link" do
    feeds = []
    feeds << 'http://www.psfk.com/feeds/mashable'
    feeds << 'http://jenniferlynch.wordpress.com/feed'
    feeds << 'http://lurenbijdeburen.wordpress.com/feed'

    feeds.each do |url|
      assert_equal url, Feedbag.find(url).first.url
    end
  end

  test "Feedbag find should discover feeds from site" do
    feeds = []
    feeds << 'http://www.justinball.com/'

    feeds.each do |url|
      assert_equal 'http://www.justinball.com/feed/', Feedbag.find(url).first.url
    end
  end

  test "Feedbag find should discover feeds from xml" do
    feeds = []
    feeds << 'http://tabtimes.com/tbfeed/mashable/full.xml'

    feeds.each do |url|
      assert_equal url, Feedbag.find(url).first.url
    end
  end

  test "Feedgab should find multiple feeds" do
    feeds = Feedbag.find('http://www.engadget.com')
    assert feeds.length > 0
  end
end
