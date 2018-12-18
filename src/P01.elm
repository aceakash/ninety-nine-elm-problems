-- Write a function last that returns the last element of a list.
-- An empty list doesn't have a last element, therefore last must return a Maybe.


module P01 exposing (last)


last : List a -> Maybe a
last list =
    case list of
        [] ->
            Nothing

        x :: [] ->
            Just x

        x :: xs ->
            last xs
