package sudoku

import (
	"bufio"
	"fmt"
	"os"
)

func PrintBoard(board [][]int) {
	if board == nil {
		return
	}
	fmt.Println()
	for i := 0; i < 9; i++ {
		if i%3 == 0 && i != 0 {
			fmt.Println("-------|-------|-------")
		}
		for j := 0; j < 9; j++ {
			fmt.Print(" ")
			if j%3 == 0 && j != 0 {
				fmt.Print("| ")
			}
			fmt.Print(board[i][j])
		}
		fmt.Println()
	}
	fmt.Println()
}

func DebugBoard(board [][]int) {
	PrintBoard(board)
	reader := bufio.NewReader(os.Stdin)
	_, _ = reader.ReadString('\n')
}
