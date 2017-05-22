module View.Application exposing (app_view)

import Html exposing (Html, text)
import Model.Application
    exposing
        ( Application
        , Action(UpdateA)
        , Page(..)
        , PageState(..)
        )
import View.PageA exposing (aView)


app_view : Application -> Html Action
app_view app =
    case app.pageState of
        Loaded p ->
            viewPage p


viewPage : Page -> Html Action
viewPage page =
    case page of
        Blank ->
            text "blank"

        PageA a ->
            Html.map UpdateA (aView a)
