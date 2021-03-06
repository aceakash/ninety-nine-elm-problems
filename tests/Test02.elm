module Test02 exposing (suite)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import P02 exposing (penultimate)
import Test exposing (..)


suite : Test
suite =
    describe "P02"
        [ describe "penultimate"
            -- Nest as many descriptions as you like.
            [ test "returns Nothing for an empty list" <|
                \_ ->
                    Expect.equal Nothing (penultimate [])
            , test "returns Nothing for a list with a single element" <|
                \_ ->
                    Expect.equal Nothing (penultimate [ 1 ])
            , test "returns second element for a list with 2 elements" <|
                \_ ->
                    Expect.equal (Just 1.1) (penultimate [ 1.1, 9.9 ])
            , test "returns penultimate element" <|
                \_ ->
                    Expect.equal (Just "four") (penultimate [ "one", "two", "three", "four", "five" ])
            ]
        ]
