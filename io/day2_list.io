IOException := Exception clone
List myAvr := method(
            sum := 0
            size := self size
            self foreach(element, if((element type) == "Number") then(sum = sum + element) else(size = size - 1))
            if(size == 0) then(IOException raise("Zero Numbers in the list"))
            sum / size
        )

list(1,2,3,4) myAvr println // 2.5
list("as") myAvr println // Error!