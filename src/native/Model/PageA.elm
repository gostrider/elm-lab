module Model.PageA exposing (..)


type alias AState =
    { content : String }


type AAction
    = ChangeField String


initPageA : AState
initPageA =
    AState "initA"


updateA : AAction -> AState -> AState
updateA action state =
    case action of
        ChangeField c_ ->
            { state | content = c_ }
