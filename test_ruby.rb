# frozen_string_literal: true

require "minitest/autorun"
require_relative "lib/bestvid/site_kit"

class BestVidSiteKitTest < Minitest::Test
  def test_url
    assert_equal "https://bestvid.net", BestVid::SiteKit.url
    assert_equal "https://bestvid.net", BestVid::SiteKit.url("/")
    assert_equal "https://bestvid.net/tools/ai-video", BestVid::SiteKit.url("/tools/ai-video")
    assert_equal "https://bestvid.net/tools/ai-video", BestVid::SiteKit.url(" tools/ai-video ")
  end

  def test_search_url
    assert_equal(
      "https://bestvid.net/search?q=ai+video+generator",
      BestVid::SiteKit.search_url(" ai video generator ")
    )
  end
end
