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
    name_up = String.upcase(name)
    Enum.find(@all_flags, nil, &(String.upcase(&1.name) == name_up))
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
    iso_up = String.upcase(iso)
    Enum.find(@all_flags, nil, &(&1.iso == iso_up))
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

  @doc """
  Returns a list containing all available countries

  ## Example

      iex> Flagmojis.countries
      ["Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola",
       "Anguilla", "Antarctica", "Antigua and Barbuda", "Argentina", "Armenia",
       "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain",
       "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda",
       "Bhutan", "Bolivia", "Bonaire, Sint Eustatius and Saba",
       "Bosnia and Herzegovina", "Botswana", "Bouvet Island", "Brazil",
       "British Indian Ocean Territory", "Brunei Darussalam", "Bulgaria",
       "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde",
       "Cayman Islands", "Central African Republic", "Chad", "Chile", "China",
       "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo",
       ...]
  """
  def countries() do
    Enum.reduce(@all_flags, [], &([&1.name | &2]))
    |> Enum.sort
  end

  @doc """
  Returns a list containing all available ISO codes

  ## Example

      iex> Flagmojis.iso_codes
      ["AD", "AE", "AF", "AG", "AI", "AL", "AM", "AO", "AQ", "AR", "AS", "AT", "AU",
       "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL",
       "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC",
       "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", ...]
  """
  def iso_codes() do
    Enum.reduce(@all_flags, [], &([&1.iso | &2]))
    |> Enum.sort
  end
end
