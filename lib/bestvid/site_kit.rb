# frozen_string_literal: true

require "uri"

module BestVid
  module SiteKit
    SITE_URL = "https://bestvid.net"
    SITE_NAME = "BestVid"

    module_function

    def url(path = "")
      normalized = path.to_s.strip
      return SITE_URL if normalized.empty? || normalized == "/"

      "#{SITE_URL}/#{normalized.delete_prefix("/")}"
    end

    def search_url(query)
      "#{url("/search")}?q=#{URI.encode_www_form_component(query.to_s.strip)}"
    end
  end
end
