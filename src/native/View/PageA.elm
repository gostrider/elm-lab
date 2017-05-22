module View.PageA exposing (..)

import Html exposing (Html, input, br, div, input, text)
import Html.Events exposing (onInput)
import Model.PageA exposing (AState, AAction(ChangeField))


aView : AState -> Html AAction
aView state =
    div []
        [ text state.content
        , br [] []
        , input [ onInput ChangeField ] []
        ]
