defmodule BestvidSiteKitTest do
  use ExUnit.Case, async: true

  test "builds absolute urls" do
    assert BestvidSiteKit.url("") == "https://bestvid.net"
    assert BestvidSiteKit.url("/") == "https://bestvid.net"
    assert BestvidSiteKit.url("/tools/ai-video") == "https://bestvid.net/tools/ai-video"
    assert BestvidSiteKit.url("tools/ai-video") == "https://bestvid.net/tools/ai-video"
  end

  test "builds search urls" do
    assert BestvidSiteKit.search_url(" ai video generator ") ==
             "https://bestvid.net/search?q=ai+video+generator"
  end
end
