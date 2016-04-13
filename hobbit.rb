sword = false
ring = false
luck = false

answer = '';
    
puts "A dragon has kidnapped your best friend and your other friends 
are going to set out on a journey to save him/her. You are ready   
for your first real adventure and the first thing you must do is go 
to the blacksmith in order to properly prepare yourself. But you  are 
really eager to start your adventure so what do you do?

a. Go straight on your adventure because you've been working out so 
you are invincible anyway.

b. Go to the blacksmith whatever he gives you might come in handy later on.

c. I'm a hobbit I don't want to leave my house."

answer = gets.chomp

if answer == 'a'
    puts "Well your journey begins now and your friends are with you so it
         will not  be soo bad..right?"
elsif answer == 'b'
    puts "The blacksmith said he feels bad that he ran out of armor but he 
        is kind enough to give you a sword and it is a glowing. I   
         guess you are ready for this adventure now."
    sword = true
else
    puts "Your friends don't appreciate your laziness and decide to beat you
     up before dragging you out of bed, this is going to be a long adventure."
end

puts "However you got dragged into this, you are in it now. But literally it only 
        took 1 day for you to get split up from your friends  and meet some weird 
        guy who just talks about some precious. He shows you a ring and it entices
         you what do you do?

a. Take the ring from the weirdo and run

b. Leave him alone and try and get back to your frineds

c. Play a game of riddles with the crazy man"

answer = gets.chomp

if answer == 'a'
    puts "It was a close call but you managed to slip the ring away and 
        get away from the lunatic"
    ring = true
elsif answer == 'b'
    puts "You leave the weird cave and set off looking for your friends 
    while the crazy guy keeps yelling random sentences"
else
    puts "Your friends don't appreciate the fact that you are playing games 
    and yell at you to come along when they find you in the cave"
end

puts "Well, it's been a long couple of days but you finally found the castle 
     where the dragon is hoarding your best friend. As you walk    
     in the dragon comes down and you being in front are about to 
     get a face full of fire. That is if you can not do anything about it

a. You take the sword from your pocket and fight

b. You use the ring and hope that some magic will help you

c. You depend on luck because hey why not"

answer = gets.chomp

if answer == 'a' && sword
    puts "You fought bravely and thanks to some magic infused in the glowing 
    sword you killed the dragon in one swoop saving your friend who cannot
     thank you enough for coming to their rescue, the others did not even recieve 
     any acclomades from your friend but it is alright you did do a lot of 
     the work right"
elsif answer == 'b' && ring
    puts "You use the ring and the dragon is so enticed that he takes it from you 
    and then flies off, this allows you to rescue your friend and make it back home, 
    and you did not really care that the dragon is alive you get to hang out with 
    your friend and that is all that really matters"
else
    if  rand(0..4) == rand(0..4)
        luck = true
    end
    
    if luck
        puts "You are super lucky. The dragon was so old it fell asleep allowing
         you to resue your firned and you even found a stash of gold in the 
         room that your friend had been staying in. This turned out to be a great 
         adventure for you."
    else
        puts "To bad you did not use any of the other items you could have gotten 
        on this journey, because the dragon just burned you   to a crisp."
    end
end
