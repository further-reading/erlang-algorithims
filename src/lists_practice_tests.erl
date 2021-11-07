-module(lists_practice_tests).
-author("further-reading").

-include_lib("eunit/include/eunit.hrl").

length_test() ->
  List_in = ["a", "b","b", "c"],
  Count = lists_practice:length(List_in),
  ?assertEqual(4, Count),
  ok.

sum_test() ->
  List_in = [1, 2, 3, 2],
  Sum = lists_practice:sum(List_in),
  ?assertEqual(8, Sum),
  ok.


reverse_test() ->
  List_in = ["a", "b","b", "c"],
  Reversed = lists_practice:reverse(List_in),
  ?assertEqual(["c", "b","b", "a"], Reversed),
  ok.

factorial_test() ->
  Arg_in = 5,
  Expected = 5 * 4 * 3 * 2,
  Actual = lists_practice:factorial(Arg_in),
  ?assertEqual(Expected, Actual),
  ok.

count_appearence_test() ->
  List_in = ["4", "1", "2", "3", "2", "3", "4", "4"],
  ?assertEqual(lists_practice:count_appearence(List_in, "1"), 1),
  ?assertEqual(lists_practice:count_appearence(List_in, "2"), 2),
  ?assertEqual(lists_practice:count_appearence(List_in, "3"), 2),
  ?assertEqual(lists_practice:count_appearence(List_in, "4"), 3),
  ok.

longest_repeating_count_test() ->
  List_in = ["4", "4", "4", "4", "1", "2", "3", "3", "3", "3", "3", "4", "4", "4"],
  Actual = lists_practice:longest_repeating_count(List_in),
  ?assertEqual(Actual, 5),
  ok.

bubble_test() ->
  List_in = ["4", "5", "3", "1", "2"],
  Actual = lists_practice:bubble(List_in),
  ?assertEqual(Actual, ["1", "2", "3", "4", "5"]),
  ok.
