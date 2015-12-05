module Counter1 where
import Html exposing (..)
import Html.Attributes exposing (style)

-- Model
type alias Model = Int

-- View
view : Model -> Html
view model =
  div []
    [ button [] [ text "-" ]
    , div [ style [("font-size", "20px")] ] [ text (toString model) ]
    , button [] [ text "+" ]
    ]

main : Html
main =
  view 0
