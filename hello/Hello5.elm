import Debug
import Html exposing (..)
import Time

-- View

view : Float -> String -> Html
view time message =
  let
    full_message = message ++ toString time
    _ = Debug.watch "full_message is" full_message
  in
    h1 [] [ text full_message ]

main : Signal Html
main =
  Signal.map2 view (Time.every Time.second) (Signal.constant "Hello: ")
