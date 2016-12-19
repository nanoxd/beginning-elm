module Playground exposing (..)

import Html


escapeEarth velocity speed =
    let
        escapeVelocityInKmPerSec =
            11.186

        orbitalSpeedInKmPerSec =
            7.67
    in
        if velocity > escapeVelocityInKmPerSec then
            "Godspeed"
        else if speed == orbitalSpeedInKmPerSec then
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


(+++) first second =
    first ++ second


main =
    divide 30 10
        |> multiply 10
        |> add 5
        |> toString
        |> Html.text
