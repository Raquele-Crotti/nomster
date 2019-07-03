#This file tells our Geocoder configuration that it should use the "google" geocoding service

Geocoder.configure(
  lookup: :google,
  api_key: ENV['GEOCODER_API_KEY'],
  timeout: 15
)