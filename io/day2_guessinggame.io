GuessingGame := Object clone
GuessingGame init := method(
    self rng := (Random value * 100) round
    self guessed := nil
    self diff := nil
    "Lets guess a number between 0 and 100" println
)
GuessingGame makeAGuess := method(
    guessed = (File standardInput readLine) asNumber
    if(diff) then(
        if((rng - guessed) abs > diff, "Colder!" println, 
        if((rng - guessed) abs < diff, "Hotter!" println, "You just typed the same number.." println))
    )
    diff = (rng - guessed) abs
    "Guess again!" println
)

GuessingGame start := method(
    init
    makeAGuess
    while(rng != guessed, makeAGuess)
    "You won! Congratulations!" println 
)

more := true
while(more,
    game := GuessingGame clone
    game start
    "Wanna play another one? (Y/N)" println
    more = (File standardInput readLine) == "Y"
)
