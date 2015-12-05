# Introduction to Elm 0.16

## Michael Twomey
## December 8th

---

# Goal

## Get you set up and up to the start of the Elm Architecture Tutorial

https://github.com/evancz/elm-architecture-tutorial

^ Why? Getting off the ground is hard, there's no Hello World in that tutorial!
^ This tutorial will ease you into the Elm Architecture Tutorial, at the end you should know enough to follow the Elm Architecture.

---

# Setting Up

## (The boring bit)

---

# [fit] Install Elm

# [fit] http://elm-lang.org/install

^ Make we are using latest 0.16.0, if you downloaded 0.16.0 when it was released it might need to be downloaded again (there was a build problem).

---

# [fit] Install Atom

# [fit] https://atom.io

---

# Install Plugins

(Remember to 🙋 for help!)

- language-elm
- linter-elm-make

---

# Configure Plugins

- ```linter-elm-make``` might need help to find elm-make.
    - ```/usr/local/bin/elm-make```
- Indentation: Elm style guide recommends 2 or 4, pick one and stick with it 😀
    + (I use 2 spaces)

---

# Elm Repl

```haskell
$ elm repl
---- elm repl 0.16.0-----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
-------------------------------------------------------------------------------
> 

```

---

![fit](nb_elm_0.16.0.png)

^ Since the language is new and changing, it's quite important we all have the same (latest) version.
^ Bonus: the original 0.16.0 release had two bugs I know of, one cosmetic which affected the atom plugin error message formatting and one more serious which broke the debugger.

---

```haskell
$ elm repl
---- elm repl 0.16.0 -----------------------------------------------------------
 :help for help, :exit to exit, more at <https://github.com/elm-lang/elm-repl>
--------------------------------------------------------------------------------
> 1 + 1
2 : number
> "Hello there"
"Hello there" : String
> [1, 2, 3]
[1,2,3] : List number
> {x = 1, y = 2}
{ x = 1, y = 2 } : { x : number, y : number' }
```

--- 

# Hello World

```sh
mkdir hello
cd hello
atom .
elm package install evancz/elm-html
touch Hello.elm
elm reactor
```

If you go to http://localhost:8000 and click on Hello.elm you'll get a compiler error. This is good.

^ Note for Atom users: the atom Elm plugin gets confused by nested directories, e.g. if you checkout the examples and edit them the linting won't work, but if you open the folder directly it will work (e.g. atom examples vs atom examples/1).

---

# Hello.elm

```haskell
import Html
-- import Html exposing (Html, h1, text)
-- import Html exposing (..)

-- View
main : Html.Html
main =
  -- Deliberate mistake
  -- Html.h1 [] [ Html.text "Hello World" ]
  Html.h1 [] [ "Hello World" ]
```
