require 'colorize'
require 'colorize_cn'

puts "CodeNow".colorize_cn("blue")

puts "What word should we print?"
word = gets.chomp

puts "What color should it be printed in?"
color = gets.chomp

colors = ["green", "yellow", "blue", "red"]

puts "What word do you want to print?"
word = gets.chomp

colors.each do |color|
  puts word.colorize_cn(color)
end

colors = ["red", "blue", "green", "yellow", "white"]

begin
    word = colors.sample
    word_color = colors.sample
    puts word.colorize_cn(word_color)
    sleep(1)
    system("clear")
end while 1 == 1

