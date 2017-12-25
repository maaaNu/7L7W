reverse([], []).
reverse([Head|Tail], List) :- reverse(Tail, TailList), append(TailList, [Head], List).

concatenate([], List, List).
concatenate([Head|Tail1], List, [Head|Tail2]) :- concatenate(Tail1, List, Tail2).