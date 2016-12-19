module Playground exposing (..)

import Html

escapeEarth velocity speed =
  if velocity > 11.186 then
    "Godspeed"
  else if speed == 7.67 then
    "Stay in orbit"
  else
    "Come back"

speed distance time =
  distance / time

time startTime endTime =
  endTime - startTime

main =
  Html.text (escapeEarth 11 (speed 7.67 (time 2 3)))
