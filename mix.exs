defmodule Flagmojis.MixProject do
  use Mix.Project

  def project do
    [
      app: :flagmojis,
      version: "1.0.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Flagmojis",
      source_url: "https://github.com/chrisgreg/Flagmojis"
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Chris Gregori"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/chrisgreg/Flagmojis"}
    ]
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    "An Elixir micro library that provides an easy lookup to country emoji flag information including ISO, Unicode, Emoji and Name."
  end
end
