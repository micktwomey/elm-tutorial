module Counter2 where

import Html exposing (..)
import Html.Attributes exposing (style)

-- Model

type alias Model = Int

-- Update

type Action =
  Increment
  | Decrement

update : Action -> Model -> Model
update action model =
  0

-- View

countStyle : Attribute
countStyle =
  style
    [ ("font-size", "20px")
    , ("font-family", "monospace")
    , ("display", "inline-block")
    , ("width", "50px")
    , ("text-align", "center")
    ]

view : Signal.Address Action -> Model -> Html
view address model =
  div []
    [ button [] [ text "-" ]
    , div [ countStyle ] [ text (toString model) ]
    , button [] [ text "+" ]
    ]
