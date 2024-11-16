-module(task10).
-export([numbers/1]).

numbers(WorkList)->
    InputList = task9:repeating(WorkList),
    usenumbers(InputList).

usenumbers([])->
    [];
usenumbers([[H | T] | A]) ->
    [[task2:sizeoflist([H | T]) , H] | usenumbers(A)].