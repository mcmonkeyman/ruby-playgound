require 'tic_tac_toe_cn'
game = Tic_Tac_Toe.new

puts "Starting Tic Tac Toe"

board = Array.new(3) {Array.new(3)}

game.initBoard(board)

puts "Player 1 choose X or O"

playerOne = gets.chomp

if playerOne == "X" || playerOne == "x"
    playerOne = "X"
    playerTwo = "O"

else
    playerOne = "O"
    playerTwo = "X"

end

puts "Player 1: ##{playerOne}"

puts "Player 2: ##{playerTwo}"

puts "Who will go first? Type ##{playerOne} for Player 1 and ##{playerTwo} for Player 2 (Capitals matter)"

player = gets.chomp

gameOver = false

game.displayBoard(board) 

begin

turnPlayed = false

begin
    puts "Player ##{player}, choose a space"
    ##note: the player chooses between 1 and 9 but the computer  counts from 0 to 8
    playerChoice = (gets.chomp.to_i) - 1
    turnPlayed = game.turnPlayed(board,player,playerChoice)
    game.displayBoard(board)
end until turnPlayed

if game.winningRows(board) || game.winningCols(board) || game.winningDiagonals(board)
    puts "Player ##{player} wins!"
    gameOver = true

elsif game.fullBoard(board)
    puts "It's a Draw!!"
    gameOver = true

else
    if player == playerOne
        player = playerTwo
    else
        player = playerOne
    end
end

end until gameOver
