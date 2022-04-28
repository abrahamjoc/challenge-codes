package sudoku

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func Test_isValidLine(t *testing.T) {
	assert := assert.New(t)
	lineTrue := "2 4 1 | 6 8 5 | 3 9 7"
	lineFalse := "-------|-------|-------"

	ok := isValidLine(lineTrue)
	nok := isValidLine(lineFalse)

	assert.True(ok)
	assert.False(nok)
}

func Test_getArrIntFromLine(t *testing.T) {
	assert := assert.New(t)
	line := " 2 4 1 | 6 8 5 | 3 9 7"
	expected := []int{2, 4, 1, 6, 8, 5, 3, 9, 7}

	arr := getArrIntFromLine(line)

	assert.Equal(expected, arr)
}

func Test_GetSudokuFromFile(t *testing.T) {
	assert := assert.New(t)
	boardExpected := [][]int{
		{2, 4, 1, 6, 8, 5, 3, 9, 7},
		{3, 8, 9, 7, 4, 1, 2, 6, 5},
		{6, 7, 5, 2, 3, 9, 4, 8, 1},
		{7, 1, 6, 3, 2, 4, 9, 5, 8},
		{5, 3, 4, 8, 9, 7, 1, 2, 6},
		{8, 9, 2, 1, 5, 6, 7, 3, 4},
		{4, 2, 7, 5, 6, 3, 8, 1, 9},
		{9, 6, 8, 4, 1, 2, 5, 7, 3},
		{1, 5, 3, 9, 7, 8, 6, 4, 2},
	}

	board, err := GetSudokuFromFile("../assets/sudoku_resolved.txt")

	assert.Nil(err)
	assert.Equal(boardExpected, board)

}