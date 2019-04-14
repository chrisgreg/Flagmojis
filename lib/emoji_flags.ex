defmodule Flagmojis do
  alias Flagmojis.Data

  @all_flags Data.all()

  @moduledoc """
  A micro library that provides an easy lookup to country emoji information including ISO, Unicode, Emoji and Name.
  """

  @doc """
  Returns a Flagmojis.Flag struct containing all flag information by name

  ## Example

      iex> Flagmojis.by_country_name("Cyprus")
      %Flagmojis.Flag{
        emoji: "🇨🇾",
        iso: "CY",
        name: "Cyprus",
        unicode: "U+1F1E8 U+1F1FE"
      }
  """
  def by_country_name(name) do
    Enum.find(@all_flags, nil, fn x -> x.name == name end)
  end

  @doc """
  Returns a Flagmojis.Flag struct containing all flag information by country ISO

  ## Example

      iex> Flagmojis.by_iso("GB")
      %Flagmojis.Flag{
        emoji: "🇬🇧",
        iso: "GB",
        name: "United Kingdom",
        unicode: "U+1F1EC U+1F1E7"
      }
  """
  def by_iso(iso) do
    Enum.find(@all_flags, nil, fn x -> x.iso == iso end)
  end

  @doc """
  Returns a Flagmojis.Flag struct containing all flag information by unicode

  ## Example

      iex> Flagmojis.by_unicode("U+1F1EC U+1F1E7")
      %Flagmojis.Flag{
        emoji: "🇬🇧",
        iso: "GB",
        name: "United Kingdom",
        unicode: "U+1F1EC U+1F1E7"
      }
  """
  def by_unicode(unicode) do
    Enum.find(@all_flags, nil, fn x -> x.unicode == unicode end)
  end
end
