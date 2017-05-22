module Model.PageB exposing (..)

import Model.Error exposing (PageError, pageError)


type alias BState =
    { content : String }


initB : Task PageError BState
initB =
    let
        loadError =
            pageError Model.PageB "Error in PageB"
    in
        Task.succeed "loadB"
            |> Task.mapError loadError
