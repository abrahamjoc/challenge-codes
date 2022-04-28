package sudoku

func Resolve(board [][]int) ([][]int, bool) {
	if !isBoardValid(board) {
		return board, false
	}
	ok := backtrack(board)
	return board, ok
}

func backtrack(board [][]int) bool {
	if !hasBoardZeroValue(board) {
		return true
	}
	for i := 0; i < 9; i++ {
		for j := 0; j < 9; j++ {
			if board[i][j] == 0 {
				for possibleNum := 9; possibleNum >= 1; possibleNum-- {
					board[i][j] = possibleNum
					if isBoardValid(board) && backtrack(board) {
						return true
					}
				}
				board[i][j] = 0
				return false
			}
		}
	}
	return false
}

func hasBoardZeroValue(board [][]int) bool {
	for i := 0; i < 9; i++ {
		for j := 0; j < 9; j++ {
			if board[i][j] == 0 {
				return true
			}
		}
	}
	return false
}
