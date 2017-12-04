Number / := method(i, if(i==0, 0, self*i**(-1)))
(1 / 0) println // prints 0

arr := list(list(1,2,3), list(4,5,6), list(7,8,9))
sum := 0
for(i, 0, arr size - 1, 1, 
    for(j, 0, arr at(i) size - 1, 1, sum = sum + (arr at(i)) at(j)))
sum println