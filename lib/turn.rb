def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1 
end

def valid_move?(board, index)
  if index >=0 && ( board[index] == " " || board[index] == "" || board[index] == nil )
    true 
  else 
    false
  end
  
end

def move(board, index, value='X')
  board[index] = value
  display_board(board)
end

def turn(board, value='X')
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, value)
  else
    turn(board, value)
  end
    
end
