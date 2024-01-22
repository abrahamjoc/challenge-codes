package main

import "fmt"

func main() {
	var (
		nums1 = []int{1, 2, 3, 0, 0, 0}
		m     = 3
		nums2 = []int{2, 5, 6}
		n     = 3
	)
	merge(nums1, m, nums2, n)
	fmt.Println(nums1)
}

func merge(nums1 []int, m int, nums2 []int, n int) {
	if n < 1 {
		return
	}
	if m < 1 {
		copy(nums1, nums2)
		return
	}
	var (
		i    = 0
		j    = 0
		nums = []int{}
	)
	for {
		if i >= m {
			nums = append(nums, nums2[j:n]...)
			break
		}
		if j >= n {
			nums = append(nums, nums1[i:m]...)
			break
		}
		if i < m && j < n && nums1[i] <= nums2[j] {
			nums = append(nums, nums1[i])
			i++
		}
		if i < m && j < n && nums1[i] > nums2[j] {
			nums = append(nums, nums2[j])
			j++
		}
	}
	copy(nums1, nums)
}
