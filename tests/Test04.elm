module Test04 exposing (suite)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import P04 exposing (length)
import Test exposing (..)


suite : Test
suite =
    describe "P04"
        [ describe "length"
            -- Nest as many descriptions as you like.
            [ test "empty list" <|
                \_ ->
                    Expect.equal 0 (length [])
            , test "singleton" <|
                \_ ->
                    Expect.equal 1 (length [ 8 ])
            , test "many" <|
                \_ ->
                    Expect.equal 5000 (length (List.range 1 5000))
            , test "strings" <|
                \_ ->
                    Expect.equal 3 (length [ "a", "b", "c" ])
            ]
        ]
