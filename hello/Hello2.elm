import Html exposing (..)

-- View
view : String -> Html
view message =
  h1 [] [ text message ]

main : Html
main =
  view "Hello World!"
