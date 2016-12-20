module Playground exposing (..)

import Html
import Regex


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
    case dayInNumber of
        0 ->
            "Sunday"

        1 ->
            "Monday"

        2 ->
            "Tuesday"

        3 ->
            "Wednesday"

        4 ->
            "Thursday"

        5 ->
            "Friday"

        6 ->
            "Saturday"

        _ ->
            "Unknown day"


hashtag dayInNumber =
    case weekday dayInNumber of
        "Sunday" ->
            "#SinDay"

        "Monday" ->
            "#MondayBlues"

        "Tuesday" ->
            "#TakeMeBackTuesday"

        "Wednesday" ->
            "#HumpDay"

        "Thursday" ->
            "#ThrowbackThursday"

        "Friday" ->
            "#FlashbackFriday"

        "Saturday" ->
            "#Caturday"

        _ ->
            "#Whatever"


whereToPark speed =
    case speed of
        7.67 ->
            "Low Earth Orbit"

        3.8 ->
            "Medium Earth Orbit"

        3.07 ->
            "Geostationary Orbit"

        _ ->
            "Nowhere"


revelation =
    """
    It became very clear to me sitting out there today
    that every decision I've made in my entire life has
    been wrong. My life is the complete "opposite" of
    everything I want it to be. Every instinct I have,
    in every aspect of life, be it something to wear,
    something to eat - it's all been wrong.
    """


apollo =
    """
    On July 16, 1969, the massive Saturn V rocket lifted
    off from NASA's Kennedy Space Center at 09:32 a.m. EDT.
    Four days later, on July 20, Neil Armstrong and Buzz Aldrin
    landed on the Moon.
    """


launchTimePattern =
    Regex.regex "\\d\\d:\\d\\d (a\\.m\\.|p\\.m\\.)"


launchTimes =
    Regex.find (Regex.AtMost 1) launchTimePattern apollo


validateEmail email =
    let
        emailPattern =
            Regex.regex "\\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}\\b"

        isValid =
            Regex.contains emailPattern email
    in
        if isValid then
            ( "Valid email", "green" )
        else
            ( "Invalid email", "red" )


main =
    validateEmail "nano@fdp.io"
        |> toString
        |> Html.text
