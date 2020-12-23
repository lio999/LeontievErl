-module(my_zip).
-author("vladmyko").

-export([zip/2, zipWith/3]).

zip(_, []) ->
    [];
zip([], _) ->
    [];
zip([X|Xs], [Y|Ys]) ->
    [{X, Y} | zip(Xs, Ys)].

zipWith(Func, L1, L2) ->
    [Func(X, Y) || {X, Y} <- zip(L1, L2)].


