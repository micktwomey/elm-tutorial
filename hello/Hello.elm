import Html

-- View
main : Html.Html
main =
  -- Deliberate mistake here, to show off errors
  Html.h1 [] [ "Hello World" ]
  -- Html.h1 [] [ Html.text "Hello World" ]
