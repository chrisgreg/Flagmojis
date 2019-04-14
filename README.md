# Flagmojis

## What?

An Elixir micro library that provides an easy lookup to country emoji flag information including ISO, Unicode, Emoji and Name.

## Example

```
iex> Flagmojis.by_country_name("Cyprus")
%Flagmojis.Flag{
  emoji: "🇨🇾",
  iso: "CY",
  name: "Cyprus",
  unicode: "U+1F1E8 U+1F1FE"
}
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `flagmojis` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:flagmojis, "~> 1.0.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/flagmojis](https://hexdocs.pm/flagmojis).
