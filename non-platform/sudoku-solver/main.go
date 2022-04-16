package main

import (
	"fmt"
	"log"
	"sudoku/sudoku"
)

/* * *
 * Project: Sudoku Solver
 * Generator: https://qqwing.com/generate.html
 */

func main() {
	board, err := sudoku.GetSudokuFromFile("assets/sudoku_expert.txt")
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println("Resolving ...")

	boardResolved, ok := sudoku.Resolve(board)
	if ok {
		fmt.Print("Sudoku Solution:")
		sudoku.PrintBoard(boardResolved)
	} else {
		fmt.Println("Sudoku cannot resolve")
	}
}
