count(0, []).
count(Count, [Head|Tail]) :- count(TailCount, Tail), Count is TailCount + 1.

sum(0, []).
sum(Sum, [Head|Tail]) :- sum(TailSum, Tail), Sum is TailSum + Head.

min(X,Y,Z) :- (X >= Y -> Z =Y; Z=X).

minList([H|[]], H).
minList([H,K|T], MIN) :- H > K, minList([K|T], MIN).
minList([H,K|T], MIN) :- H =< K, minList([H|T], MIN).