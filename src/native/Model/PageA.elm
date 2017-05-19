module Model.PageA exposing (..)


type alias AState =
    { content : String }


initPageA : AState
initPageA =
    AState "initA"
