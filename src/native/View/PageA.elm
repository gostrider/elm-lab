module View.PageA exposing (..)

import Html exposing (Html, text)
import Model.PageA exposing (AState)


aView : AState -> Html msg
aView state =
    text state.content
