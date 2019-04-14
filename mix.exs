defmodule Flagmojis.MixProject do
  use Mix.Project

  def project do
    [
      app: :flagmojis,
      version: "1.0.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      description: description(),
      deps: [],
      name: "Flagmojis"
    ]
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
