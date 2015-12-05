import Html exposing (..)
import Time

-- View

view : Float -> String -> Html
view time message =
  h1 [] [ text (message ++ toString time) ]

main : Signal Html
main =
  Signal.map2 view (Time.every Time.second) (Signal.constant "Hello: ")
