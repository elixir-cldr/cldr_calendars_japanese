# Japanese Calendar

This library implements the Japanese calendar. For the Japanese lunisolar ("Chinese") calendar see [ex_cldr_calendars_lunisolar](https://github.com/elixir-cldr/cldr_calendars_lunisolar).

From [wikipedia](https://en.wikipedia.org/wiki/Japanese_calendar):

Japan uses the Gregorian calendar together with year designations stating the year of the reign of the current Emperor. The written form starts with the year, then the month and finally the day, coinciding with the ISO 8601 standard. For example, February 16, 2003, can be written as either 2003年2月16日 or 平成15年2月16日 (the latter following the regnal year system). 年 reads nen and means "year", 月 reads gatsu (がつ) and means "month" and finally 日 (usually) reads nichi (its pronunciation depends on the number that precedes it, see below) and means "day".

## Usage

[ex_cldr_calendars_japanese](https://hex.pm/packages/ex_cldr_calenars_japanese) conforms to both the `Calendar` and `Cldr.Calendar` behaviours and therefore the functions in the `Date`, `DateTime`, `NaiveDateTime`, `Time` and `Calendar` functions are supported.

Use either `Date/new/4` or `Sigil_D`:
```
iex> ~D[2023-03-30 Cldr.Calendar.Japanese]
~D[2023-03-30 Cldr.Calendar.Japanese]
```

## Localization

`ex_cldr_calendars_japanese` depends on [ex_cldr_calendars](https://hex.pm/packages/ex_cldr_calendars) which supports calendar localization. For full date and time formatting see [ex_cldr_dates_times](https://hex.pm/packages/ex_cldr_dates_times).

Basic localization is executed by the `Cldr.Calendar.localize/3`. For example:

```elixir
iex> Cldr.Calendar.localize(date, :month, locale: "en")
"Hator"

iex> Cldr.Calendar.localize(date, :day_of_week, locale: "en")
"Tue"

iex> Cldr.Calendar.localize(date, :day_of_week, locale: "ar-EG")
"الثلاثاء"

iex> Cldr.Calendar.localize(date, :month, locale: "ar-EG")
"هاتور"
```

## Relationship to other libraries

This library is part of the [CLDR](https://cldr.unicode.org)-based libraries for Elixir including:

* [ex_cldr](https://hex.pm/packages/ex_cldr)
* [ex_cldr_numbers](https://hex.pm/packages/ex_cldr_numbers)
* [ex_cldr_dates_times](https://hex.pm/packages/ex_cldr_dates_times)
* [ex_cldr_units](https://hex.pm/packages/ex_cldr_units)
* [ex_cldr_lists](https://hex.pm/packages/ex_cldr_lists)
* [ex_cldr_messages](https://hex.pm/packages/ex_cldr_messages)
* [ex_cldr_calendars](https://hex.pm/packages/ex_cldr_calendars)
* [ex_cldr_currencies](https://hex.pm/packages/ex_cldr_currencies)

## Installation

The package can be installed by adding `cldr_calendars_japanese` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cldr_calendars_japanese, "~> 1.0.0"}
  ]
end
```
Documentation can be found at [https://hexdocs.pm/cldr_calendars_japanese](https://hexdocs.pm/cldr_calendars_japanese).

