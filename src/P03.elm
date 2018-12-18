-- Implement the function elementAt to return the n-th element of a list.
-- The index is 1-relative, that is, the first element is at index 1.


module P03 exposing (elementAt)

import List exposing (..)


elementAt : Int -> List a -> Maybe a
elementAt index list =
    case list of
        [] ->
            Nothing

        x :: xs ->
            if index == 1 then
                Just x

            else
                elementAt (index - 1) xs


elementAt2 : Int -> List a -> Maybe a
elementAt2 index =
    take index >> reverse >> head
