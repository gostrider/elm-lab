module Model.Error exposing (..)


type PageError
    = PageError Model


type alias Model =
    { location : ActivePage
    , error_message : String
    }


pageError : Page -> String -> PageError
pageError page message =
    PageError { location = page, error_message = message }
