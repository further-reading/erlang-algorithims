-module(hashmap_tests).
-author("further_reading").

-include_lib("eunit/include/eunit.hrl").

counter_test() ->
  List_in = [1, 2, 2, 3],
  Count = hashmap:counter(List_in),
  ?assertEqual(1, dict:fetch(1, Count)),
  ?assertEqual(2, dict:fetch(2, Count)),
  ?assertEqual(1, dict:fetch(3, Count)),
  ok.
