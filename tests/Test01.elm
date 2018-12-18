module Test01 exposing (suite)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import P01 exposing (last)
import Test exposing (..)


suite : Test
suite =
    describe "P01"
        [ describe "last"
            -- Nest as many descriptions as you like.
            [ test "returns Nothing for an empty list" <|
                \_ ->
                    Expect.equal Nothing <| last []
            , test "for a list with a single element, returns it" <|
                \_ ->
                    Expect.equal (Just 1) (last [ 1 ])
            , test "for a list with many elements element, returns the last" <|
                \_ ->
                    Expect.equal (Just "boo") (last [ "one", "two", "three", "boo" ])
            ]
        ]
