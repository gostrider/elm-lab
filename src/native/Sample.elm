module Sample exposing (..)

import Html exposing (Html, text)


type alias AState =
    { content : String }


type Page
    = Blank
    | PageA AState



-- test : a -> Page
-- test a =
-- PageA a


main : Html msg
main =
    text "123"
