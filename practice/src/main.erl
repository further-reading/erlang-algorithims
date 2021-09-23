-module(main).
-author("further_reading").

-export([length/1]).

length(List) ->
  length(List, 0).

length([], Sum) -> Sum;
length([_|Tail], Sum) ->
  length(Tail, Sum + 1).