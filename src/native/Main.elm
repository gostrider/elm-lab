module Main exposing (..)

import Html exposing (beginnerProgram)
import Model.Application exposing (Application, Action, model, update)
import View.Application exposing (app_view)


main : Program Never Application Action
main =
    beginnerProgram
        { model = model
        , view = app_view
        , update = update
        }
