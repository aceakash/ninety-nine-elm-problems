module Test03 exposing (suite)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import P03 exposing (elementAt)
import Test exposing (..)


suite : Test
suite =
    describe "P03"
        [ describe "elementAt"
            -- Nest as many descriptions as you like.
            [ test "invalid index (0)" <|
                \_ ->
                    Expect.equal Nothing (elementAt 0 [ 1, 2 ])
            , test "invalid index (-1)" <|
                \_ ->
                    Expect.equal Nothing (elementAt -1 [ 1, 2 ])
            , test "outOfBounds #1" <|
                \_ ->
                    Expect.equal Nothing (elementAt 1 [])
            , test "outOfBounds #2" <|
                \_ ->
                    Expect.equal Nothing (elementAt 8 [])
            , test "elementAt 1 of 1-element list" <|
                \_ ->
                    Expect.equal "foo" (elementAt 1 [ "foo" ] |> Maybe.withDefault "")
            , test "elementAt 1 of n-element list" <|
                \_ ->
                    Expect.equal 2 (elementAt 1 [ 2, 5, 7, 6 ] |> Maybe.withDefault 0)
            , test "element in the middle" <|
                \_ ->
                    Expect.equal 7 (elementAt 4 [ 4, 5, 6, 7, 8, 9 ] |> Maybe.withDefault 0)
            , test "element at the end" <|
                \_ ->
                    Expect.equal "gi" (elementAt 3 [ "su", "ka", "gi" ] |> Maybe.withDefault "")
            ]
        ]
