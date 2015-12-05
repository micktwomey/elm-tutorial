import Counter3 exposing (update, view)

import Html exposing (Html)
import StartApp.Simple exposing (start)


main : Signal Html
main =
  start
    { model = 0
    , update = update
    , view = view
    }
