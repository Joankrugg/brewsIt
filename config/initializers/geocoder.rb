Geocoder.configure(
  timeout: 5,                 # geocoding service timeout (secs)
  lookup: :nominatim,         # name of geocoding service (symbol)
  use_https: true,            # use HTTPS for lookup requests? (if supported)
  api_key: nil,               # API key for geocoding service
  units: :km,                 # :km for kilometers or :mi for miles
  distances: :linear          # :spherical or :linear
)
