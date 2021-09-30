-module(lists_practice).
-author("further_reading").

-export([length/1, sum/1, reverse/1, factorial/1, count_appearence/2, longest_repeating/1, bubble/1]).

length(List) ->
  length(List, 0).

sum(List) ->
  sum(List, 0).

reverse(List) ->
  reverse(List, []).

factorial(N) ->
  factorial(N, 1).

count_appearence(List, Target) ->
  count_appearence(List, Target, 0).

longest_repeating([]) ->
  "Empty List";
longest_repeating([H|Tail]) ->
  longest_repeating([H|Tail], 0, H, 0).

bubble(List) ->
  bubble(List, [], []).

length([], Sum) -> Sum;
length([_|Tail], Sum) ->
  length(Tail, Sum + 1).



sum([], Sum) -> Sum;
sum([H|Tail], Sum) ->
  sum(Tail, Sum + H).



reverse([], Out) -> Out;
reverse([H|Tail], Out) ->
  reverse(Tail, [H|Out]).



factorial(1, Acc) ->
  Acc;
factorial(N, Acc) ->
  factorial(N- 1, N * Acc).



count_appearence([], _, Acc) ->
  Acc;
count_appearence([H|Tail], H, Acc) ->
  count_appearence(Tail, H, Acc + 1);
count_appearence([_|Tail], Target, Acc) ->
  count_appearence(Tail, Target, Acc).



longest_repeating([], Curr, _, MaxSeen) ->
  case Curr > MaxSeen of
    true -> Curr;
    false -> MaxSeen
  end;
longest_repeating([A|Tail], Curr, A, MaxSeen) ->
  longest_repeating(Tail, Curr + 1, A, MaxSeen);
longest_repeating([A|Tail], Curr, _, MaxSeen) ->
  case Curr > MaxSeen of
    true -> longest_repeating(Tail, 1, A, Curr);
    false -> longest_repeating(Tail, 1, A, MaxSeen)
  end.

bubble([], [], Sorted) ->
  Sorted;
bubble([A, B|Tail], Smalls, Sorted) ->
  case A < B of
    true -> bubble([B|Tail], [A|Smalls], Sorted);
    false -> bubble([A|Tail], [B|Smalls], Sorted)
  end;
bubble([A], Smalls, Sorted) ->
  bubble(Smalls, [], [A|Sorted]).
