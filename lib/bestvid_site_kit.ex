defmodule BestvidSiteKit do
  @moduledoc """
  Small URL helpers for [BestVid](https://bestvid.net).
  """

  @site_url "https://bestvid.net"
  @site_name "BestVid"

  @doc "Public BestVid website URL."
  def site_url, do: @site_url

  @doc "Public product name."
  def site_name, do: @site_name

  @doc "Returns an absolute BestVid URL for a path."
  def url(path \\ "") do
    normalized = path |> to_string() |> String.trim()

    if normalized == "" or normalized == "/" do
      @site_url
    else
      @site_url <> "/" <> String.trim_leading(normalized, "/")
    end
  end

  @doc "Returns the BestVid search URL for a query."
  def search_url(query) do
    url("/search") <> "?q=" <> URI.encode_www_form(to_string(query) |> String.trim())
  end
end
