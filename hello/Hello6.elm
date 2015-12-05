import Date
import Date.Format exposing (format)
import Debug
import Html exposing (..)
import Time

-- View

view : Float -> String -> Html
view time message =
  let
    _ = Debug.watch "raw time is" time
    full_message = message ++ format "%A %H:%m:%S" (Date.fromTime time)
    _ = Debug.watch "full_message is" full_message
  in
    h1 [] [ text full_message ]

main : Signal Html
main =
  Signal.map2 view (Time.every Time.second) (Signal.constant "Hello: ")
