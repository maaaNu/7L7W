Builder := Object clone
Builder indentIdx := 0
Builder forward := method(
    indent
    writeln("<", call message name, ">")
    indentIdx = indentIdx + 1
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence", 
        indent 
        writeln(content))
    )
    indentIdx = indentIdx - 1
    indent
    writeln("</", call message name, ">")
)

Builder indent := method(
    for(i, 1, indentIdx, 1, write("    "))
)

Builder ul(
            li( "This sucks",
                li("Io")
            ),
            li( "good languages",
                li("haskell"),
                li("scala")
            ),
            li( "...")
        )