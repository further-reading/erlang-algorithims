-module(hashmap_tests).
-author("further_reading").

-include_lib("eunit/include/eunit.hrl").

counter_test() ->
  List_in = ["a", "b","b", "c"],
  Count = hashmap:counter(List_in),
  ?assertEqual(1, dict:fetch("a", Count)),
  ?assertEqual(2, dict:fetch("b", Count)),
  ?assertEqual(1, dict:fetch("c", Count)),
  ok.
