defmodule BestvidSiteKit.MixProject do
  use Mix.Project

  @source_url "https://github.com/bbwdadfg/bestvid-site-kit"
  @version "0.1.5"

  def project do
    [
      app: :bestvid_site_kit,
      version: @version,
      elixir: "~> 1.14",
      description: "Small URL helpers for BestVid links.",
      package: package(),
      deps: deps(),
      name: "BestVid Site Kit",
      source_url: @source_url,
      homepage_url: "https://bestvid.net",
      docs: [
        main: "BestvidSiteKit",
        source_ref: "v#{@version}",
        source_url: @source_url
      ]
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      name: "bestvid_site_kit",
      files: ["lib/bestvid_site_kit.ex", "mix.exs", "README.md", "LICENSE"],
      licenses: ["MIT"],
      links: %{
        "BestVid" => "https://bestvid.net",
        "GitHub" => @source_url
      }
    ]
  end
end
