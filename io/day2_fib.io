Fib := Object clone
Fib recFib := method(n,
            if(n <= 2, 1, recFib(n-1) + recFib(n-2)))

Fib recFib(4) println