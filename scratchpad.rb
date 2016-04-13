puts "Hello from inside the scratchpad"

$fun = "fkkkkk"
while($fun.include? "f")
    puts $fun
    $fun = "kkkk"
    puts ($fun.include? "f")
    puts !($fun.include? "f")
end 
puts "end"


puts "Plesae type a Adjective"
$Adjective = gets.chomp
puts Adjective
