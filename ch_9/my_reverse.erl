-module(my_reverse).
-author("vladmyko").

-export([reverse/1]).

reverse(L) ->
    reverse(L, []).

reverse([], Acc) ->
    Acc;
reverse([H|T], Acc) ->
    reverse(T, [H|Acc]).
