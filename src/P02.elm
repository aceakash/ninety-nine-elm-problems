-- Implement the function penultimate to find the next to last element of a list.


module P02 exposing (penultimate)


penultimate : List a -> Maybe a
penultimate list =
    case list of
        [] ->
            Nothing

        x :: [] ->
            Nothing

        x :: y :: [] ->
            Just x

        x :: xs ->
            penultimate xs
