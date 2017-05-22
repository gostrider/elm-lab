module Model.Application exposing (..)

import Model.PageA exposing (AState, AAction, initPageA, updateA)


-- Application :: App State
-- PageState :: App State Type
-- Page :: UI State Type
-- Action :: App Action


type alias Application =
    { pageState : PageState }


type PageState
    = Loaded Page


type Page
    = Blank
    | PageA AState


type Action
    = LoadA AState
    | UpdateA AAction


model : Application
model =
    Loaded Blank
        |> Application


update : Action -> Application -> Application
update action app =
    case ( action, getPage app.pageState ) of
        ( LoadA a, _ ) ->
            { app | pageState = Loaded (PageA a) }

        ( UpdateA subAction, PageA subState ) ->
            toPage PageA Nothing updateA subAction subState app

        ( _, _ ) ->
            app


toPage : (a -> Page) -> b -> (c -> d -> a) -> c -> d -> Application -> Application
toPage toModel toMsg subUpdate subMsg subModel app =
    let
        newModel =
            subUpdate subMsg subModel
    in
        { app | pageState = Loaded (toModel newModel) }


getPage : PageState -> Page
getPage page =
    case page of
        Loaded p ->
            p
