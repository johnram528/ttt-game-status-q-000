# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

 def won?(board)
  WIN_COMBINATIONS.detect  do | combination|
    position_taken?(board,combination[0]) && (board[combination[0]] == board[combination[1]] && board[combination[2]] == board[combination[1]])
  end

 end
def full?(board)
    !board.include?(" ")
end

def draw?(board)
    full?(board) && !won?(board)
end

def over?(board)
    full?(board) || draw?(board) || won?(board)
end
def winner(board)
    if won?(board)
        return board[won?(board)[0]]
    else
        return nil
    end
end