defmodule Cldr.Calendar.Japanese.RoundTrip.Test do
  use ExUnit.Case
  use ExUnitProperties

  @max_runs 2_000

  property "Date Round Trip" do
    check all(date <- Cldr.Calendar.Japanese.DateGenerator.generate_date(), max_runs: @max_runs) do
      %{year: y, month: m, day: d} = date

      iso_days = Cldr.Calendar.Japanese.date_to_iso_days(y,m,d)
      {year, month, day} = Cldr.Calendar.Japanese.date_from_iso_days(iso_days)

      assert year == y
      assert month == m
      assert day == d
    end
  end
end