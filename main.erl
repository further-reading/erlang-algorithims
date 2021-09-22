-module(main).
-author("further_reading").

-export([count/2]).

count([], Sum) -> Sum;
count([_|Tail], Sum) ->
  count(Tail, Sum + 1).
