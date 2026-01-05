    
# Remove_Duplicates
Remove_Duplicate is a problem where you are Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.
## how did i solved it

The variable j is used to keep track of the current index where a unique element should be placed and the list is sorted and thats helpfull alot , so we loop throw it , if we found two diffrent near by numbers that mean's we found a unique number we place it in the j index at increment j 

## Complexity
- Time complexity:
O(n) // 62ms

- Space complexity:
18mb

## Code
```
class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        j = 1
        for i in range(1, len(nums)):
            if nums[i] != nums[i - 1]:
                nums[j] = nums[i]
                j += 1
        return j
```