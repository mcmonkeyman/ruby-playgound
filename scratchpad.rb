

$fun = "fkkkkk"
while($fun.include? "f")
    puts $fun
    $fun = "kkkk"
    puts ($fun.include? "f")
    puts !($fun.include? "f")
end 
puts "end"
