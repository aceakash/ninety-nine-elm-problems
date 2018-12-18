module Main exposing (main)

import Html
import P01


main =
    Html.text (String.fromList <| Maybe.withDefault [] <| P01.last [ 'a' ])
