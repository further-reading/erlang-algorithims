-module(tree_tests).
-author("further_reading").

-include_lib("eunit/include/eunit.hrl").

trees_empty_test() ->
  Empty_tree = trees:empty(),
  ?assertEqual({node, nil}, Empty_tree),
  ok.

trees_insert_new_test() ->
  Empty_tree = trees:empty(),
  New_tree = trees:insert("Ham", 1.50, Empty_tree),
  ?assertEqual({node,{"Ham",1.5,Empty_tree,Empty_tree}}, New_tree),
  ok.

trees_insert_larger_test() ->
  Empty_tree = trees:empty(),
  New_tree = trees:insert("Ham", 1.50, Empty_tree),
  Final_tree = trees:insert("Milk", 0.50, New_tree),
  ?assertEqual({node,{"Ham",1.5,Empty_tree,{node, {"Milk", 0.50, Empty_tree, Empty_tree}}}}, Final_tree),
  ok.

trees_insert_smaller_test() ->
  Empty_tree = trees:empty(),
  New_tree = trees:insert("Ham", 1.50, Empty_tree),
  Final_tree = trees:insert("Beef", 2.00, New_tree),
  ?assertEqual({node,{"Ham",1.5,{node, {"Beef", 2.00, Empty_tree, Empty_tree}},Empty_tree}}, Final_tree),
  ok.

trees_lookup_test() ->
  TestTree = trees:insert("Ham", 1.50,
    trees:insert("Beef", 2.00,
      trees:insert("Milk", 0.50,
        trees:empty()))),
  {ok, Actual_Ham} = trees:lookup("Ham", TestTree),
  {ok, Actual_Beef} = trees:lookup("Beef", TestTree),
  {ok, Actual_Milk} = trees:lookup("Milk", TestTree),
  ?assertEqual(1.50, Actual_Ham),
  ?assertEqual(2.00, Actual_Beef),
  ?assertEqual(0.50, Actual_Milk),
  ?assertEqual(undefined, trees:lookup("Fake", TestTree)),
  ok.
