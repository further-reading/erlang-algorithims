-module(main).
-author("further_reading").

-export([length/2]).

length([], Sum) -> Sum;
length([_|Tail], Sum) ->
  length(Tail, Sum + 1).
