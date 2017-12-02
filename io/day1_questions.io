Day1 := Object clone do(

    q1 := method(
        "Question 1: Is Io strongly or weakly typed?" println
        valid := 1 + 1
        valid println
        invalid := try(1 + "one")
        invalid catch (Exception, writeln("io is dynamically typed."))
    )

    q2 := method(
        "Question 2: Boolean value of '', 0 and nil" println
        if(0, "0 is true" println, "0 is false" println)
        if("", "'' is true" println, "'' is false" println)
        if(nil, "nil is true" println, "nil is false" println)
    )

    q3 := method(
        "Question 3: Get the supported slotes of a prototype."
        Person := Object clone
        Person name ::= nil
        Person address ::= nil

        sherlock := Person clone setName("Holmes") setAddress("221B Baker St")
        sherlock slotNames println
        sherlock type println
        Object slotNames println
    )
)

Day1 q3


