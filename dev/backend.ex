require Cldr.Calendar

defmodule MyApp.Cldr do
  use Cldr,
    locales: ["fa", "ar", "ar-EG", "en", "de", "ja"],
    default_locale: "en",
    providers: [Cldr.Calendar]
end