# code your #valid_move? method here

def valid_move?(board, index)

  new_index = index.to_i - 1

  if 0 <= new_index && new_index <= 9
    within_index = true
  else
    within_index = false
  end

  if position_taken?(board, new_index) == true
    occupied = true
  else
    ocupied = false
  end

  if within_index == true && occupied == false 
    return true 
  else 
    return false 
end 



end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, new_index)
  if board[new_index] == "X" || "O"
    return true
  else
    return false
  end
end
