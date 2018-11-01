<<<<<<< HEAD

=======
board = [" ", " ", " "," ", " ", " "," ", " ", " "]
# out the current state.
>>>>>>> bee6fc22ded029c3e270a4673a5a2f311461ea63
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
<<<<<<< HEAD
def input_to_index(user_input)
  user_input.to_i - 1
end
def move(board, index, current_player = "X")
  board[index] = current_player
end
def valid_move?(board, index)
   if index.between?(1,9)
     if !position_taken?(board, index)
       true
     end
   end
  index.between?(0,8) && !position_taken?(board, index)
end
def position_taken?(board, index)
  board[index] != " "
=======
def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end
def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end
def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
>>>>>>> bee6fc22ded029c3e270a4673a5a2f311461ea63
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
<<<<<<< HEAD
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index, current_player = "X")
  else
    turn(board)
  end
display_board(board)
=======
  if valid_move?(board, input)
    move(board, input, current_player(board))
  else
    turn(board)
  end
  display_board(board)
end
def turn_count(board)
  counter = 0
  board.each do |i|
    if i == "X" || i == "O"
      counter += 1
    end
  end
  return counter
>>>>>>> bee6fc22ded029c3e270a4673a5a2f311461ea63
end
