module Playground exposing (..)

import Html


escapeEarth velocity speed fuelStatus =
    let
        escapeVelocityInKmPerSec =
            11.186

        orbitalSpeedInKmPerSec =
            7.67

        whereToLand fuelStatus =
            if fuelStatus == "low" then
                "Land on droneship"
            else
                "Land on launchpad"
    in
        if velocity > escapeVelocityInKmPerSec then
            "Godspeed"
        else if speed == orbitalSpeedInKmPerSec then
            "Stay in orbit"
        else
            whereToLand fuelStatus


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


weekday dayInNumber =
    if dayInNumber == 0 then
        "Sunday"
    else if dayInNumber == 1 then
        "Monday"
    else if dayInNumber == 2 then
        "Tuesday"
    else if dayInNumber == 3 then
        "Wednesday"
    else if dayInNumber == 4 then
        "Thursday"
    else if dayInNumber == 5 then
        "Friday"
    else if dayInNumber == 6 then
        "Saturday"
    else
        "Unknown day"


main =
    weekday 5
        |> Html.text
