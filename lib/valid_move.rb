# code your #valid_move? method here

def valid_move?(board, index)

  #new_index = index.to_i - 1

  if 0 <= index && index <= 8
    within_index = true
  else
    within_index = false
  end

  if position_taken?(board, index) == true
    occupied = true
  else
    occupied = false
  end

  if within_index == true && occupied == false
    return true
  else
    return false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  character = board[index]
  if character == "X" || character == "O"
    return true
  else
    return false
  end
end
