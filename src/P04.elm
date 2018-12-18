-- Elm provides the function List.length. See if you can implement it yourself.


module P04 exposing (length)


length : List a -> Int
length list =
    List.foldl (\item acc -> acc + 1) 0 list


length2 : List a -> Int
length2 list =
    case list of
        [] ->
            0

        x :: xs ->
            1 + length xs
