package sudoku

func isBoardValid(board [][]int) bool {
	for i := 0; i < 9; i++ {
		if !isRowValid(i, board) {
			return false
		}
	}
	for j := 0; j < 9; j++ {
		if !isColValid(j, board) {
			return false
		}
	}
	for i := 0; i <= 6; i += 3 {
		for j := 0; j <= 6; j += 3 {
			if !isSectionValid(i, j, board) {
				return false
			}
		}
	}
	return true
}

func isRowValid(row int, board [][]int) bool {
	var n = make(map[int]bool)
	for j := 0; j < 9; j++ {
		if board[row][j] == 0 {
			continue
		}
		if nv, ok := n[board[row][j]]; nv && ok {
			return false
		}
		n[board[row][j]] = true
	}
	return true
}

func isColValid(col int, board [][]int) bool {
	var n = make(map[int]bool)
	for i := 0; i < 9; i++ {
		if board[i][col] == 0 {
			continue
		}
		if nv, ok := n[board[i][col]]; nv && ok {
			return false
		}
		n[board[i][col]] = true
	}
	return true
}

func isSectionValid(row, col int, board [][]int) bool {
	var n = make(map[int]bool)
	for i := row; i < row+3; i++ {
		for j := col; j < col+3; j++ {
			if board[i][j] == 0 {
				continue
			}
			if nv, ok := n[board[i][j]]; nv && ok {
				return false
			}
			n[board[i][j]] = true
		}
	}
	return true
}
