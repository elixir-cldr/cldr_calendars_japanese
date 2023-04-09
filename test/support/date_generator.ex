defmodule Cldr.Calendar.Japanese.DateGenerator do
  require ExUnitProperties

  def generate_date do
    ExUnitProperties.gen all(
                           year <- StreamData.integer(0001..3000),
                           month <- StreamData.integer(1..Cldr.Calendar.Japanese.months_in_year(year)),
                           day <- StreamData.integer(1..Cldr.Calendar.Japanese.days_in_month(year, month))
                         ) do

      case  Date.new(year, month, day, Cldr.Calendar.Japanese) do
        {:ok, date} -> date
        _other -> raise inspect({year, month, day})
      end
    end
  end
end