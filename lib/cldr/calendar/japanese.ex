defmodule Cldr.Calendar.Japanese do
  @moduledoc """
  Implements the Japanese calendar that is calendrically
  the same as the proleptic Gregorian calendar but has a
  different era structure.

  """

  use Cldr.Calendar.Behaviour,
    epoch: ~D[0001-01-01],
    month_of_year: 1,
    min_days_in_first_week: 1,
    day_of_week: Cldr.Calendar.monday(),
    cldr_calendar_type: :japanese

  defdelegate date_from_iso_days(iso_days), to: Cldr.Calendar.Gregorian
  defdelegate date_to_iso_days(year, month, day), to: Cldr.Calendar.Gregorian

  @impl Calendar
  defdelegate leap_year?(year), to: Cldr.Calendar.Gregorian

end
