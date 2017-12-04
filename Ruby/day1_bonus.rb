# Nicht im Atom starten
correct_number = rand(10)

begin
  puts "Try to guess the correct number: \n"
  guessed_number = Integer (gets )
end while not guessed_number == correct_number
