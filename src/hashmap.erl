-module(hashmap).
-author("further_reading").

%% API
-export([counter/1]).

counter(List) ->
  counter(List, dict:new()).

counter([], Count) ->
  Count;
counter([H|Tail], Count) ->
  case dict:is_key(H, Count) of
    true -> NewDict = dict:update(H, fun(X) -> X + 1 end, Count);
    false -> NewDict = dict:store(H, 1, Count)
  end,
  counter(Tail, NewDict).
