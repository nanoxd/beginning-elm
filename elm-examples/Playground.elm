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


add a b =
    a + b


multiply c d =
    c * d


divide e f =
    e / f


main =
    divide 30 10
        |> multiply 10
        |> add 5
        |> toString
        |> Html.text
