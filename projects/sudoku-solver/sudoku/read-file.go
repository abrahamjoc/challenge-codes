package sudoku

import (
	"bufio"
	"os"
	"regexp"
	"strconv"
)

func GetSudokuFromFile(filepath string) ([][]int, error) {
	file, err := os.Open(filepath)
	if err != nil {
		return nil, err
	}
	defer file.Close()

	var matrix [][]int
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		line := scanner.Text()
		if isValidLine(line) {
			matrix = append(matrix, getArrIntFromLine(line))
		}
	}

	if err := scanner.Err(); err != nil {
		return nil, err
	}
	return matrix, nil
}

func isValidLine(line string) bool {
	r, _ := regexp.Compile(`^ [0-9] [0-9] [0-9] | [0-9] [0-9] [0-9] | [0-9] [0-9] [0-9]$`)
	return r.MatchString(line)
}

func getArrIntFromLine(line string) []int {
	var arr []int
	for i := 1; i < 22; i += 2 {
		if n, err := strconv.Atoi(string(line[i])); err == nil {
			arr = append(arr, n)
		}
	}
	return arr
}
