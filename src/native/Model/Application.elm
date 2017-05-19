module Model.Application exposing (..)

import Model.PageA exposing (AState, initPageA)


type alias Application =
    { pageState : PageState }


type Action
    = LoadedA AState


type PageState
    = Loaded Page
    | Loading Page


type Page
    = Blank
    | PageA AState


model : Application
model =
    Application (Loading (PageA initPageA))


update : Action -> Application -> Application
update action app =
    case action of
        LoadedA a ->
            { app | pageState = Loaded (PageA a) }
