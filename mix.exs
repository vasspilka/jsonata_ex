defmodule Jsonata.MixProject do
  use Mix.Project

  def project do
    [
      app: :jsonata,
      version: "0.1.2",
      description: "JSONata in a bun",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Jsonata.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:sidecar, "~> 0.5.0"},
      # Req has a lot of dependencies, consider sharper alternatives
      # for HTTP/Webhooks
      {:req, "~> 0.3.10"}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/vasspilka/jsonata_ex"}
    ]
  end
end
