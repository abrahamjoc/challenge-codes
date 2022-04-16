package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"os/exec"
	"strconv"
	"strings"
	"time"
)

/*
	This code explains how works find a duplicate number in an array with floyd's algorithm called tortoise and hare.
	https://leetcode.com/problems/find-the-duplicate-number/
	https://en.wikipedia.org/wiki/Cycle_detection#Tortoise_and_hare
*/

func main() {
	arr := makeArrayWithDuplicates()
	n := findDuplicates(arr)
	fmt.Println("Number duplicated is: " + strconv.Itoa(n))
}

func findDuplicates(arr []int) int {
	var tortoise = 0
	var hare = 0
	for true {
		tortoise++
		if tortoise >= len(arr) {
			tortoise = 0
		}
		hare += 2
		if hare >= len(arr) {
			hare -= len(arr)
		}
		if tortoise == hare {
			hare++
			if hare >= len(arr) {
				hare -= len(arr)
			}
		}
		debug(arr, tortoise, hare)
		if arr[hare] == arr[tortoise] && hare != tortoise {
			return arr[tortoise]
		}
	}
	return -1
}

// Util functions
func makeArrayWithDuplicates() []int {
	var min, max = 5, 9
	length := randomNumber(min, max)
	arr := rand.Perm(length)
	i0 := arrayIndexOf(0, arr)
	iRnd := i0
	for iRnd == i0 {
		iRnd = randomNumber(0, length-1)
	}
	arr[i0] = arr[iRnd]
	return arr
}

func randomNumber(min, max int) int {
	rand.Seed(time.Now().UnixNano())
	return rand.Intn((max+1)-min) + min
}

func arrayIndexOf(n int, arr []int) int {
	for i, v := range arr {
		if n == v {
			return i
		}
	}
	return -1
}

func debug(arr []int, tortoise, hare int) {
	clearScreen()
	fmt.Println()
	printArrayPosition(tortoise, "T")
	printArray(arr)
	printArrayPosition(hare, "H")
	fmt.Println()
	fmt.Print(fmt.Sprintf("T[%d]=%d | H[%d]=%d", tortoise, arr[tortoise], hare, arr[hare]))
	fmt.Print("    press Enter for continue...")
	readKey()
}

func clearScreen() {
	cmd := exec.Command("clear")
	cmd.Stdout = os.Stdout
	_ = cmd.Run()
	time.Sleep(time.Millisecond)
}

func printArray(arr []int) {
	var strVals = ""
	for _, v := range arr {
		strVals += strconv.Itoa(v) + " "
	}
	strVals = "| " + strings.Join(strings.Split(strVals, " "), " | ")
	fmt.Println("." + strings.Repeat("-", len(strVals)-3) + ".")
	fmt.Println(strVals + "--> " + strconv.Itoa(len(arr)))
	fmt.Println("'" + strings.Repeat("-", len(strVals)-3) + "'")
}

func printArrayPosition(i int, l string) {
	fmt.Println(strings.Repeat(" ", (i*4)+2) + l)
}

func readKey() {
	reader := bufio.NewReader(os.Stdin)
	_, _ = reader.ReadString('\n')
}
