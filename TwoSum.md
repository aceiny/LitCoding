    
# TwoSum
TwoSum is a problem where it required of you to find two numbers in a given array that sum's up to a defined target and return their index's in that array 

## how did i solved it
as i start i tried to find a way to store a number and then see if it adds up with another number so i had the idea of a hashmap or a 'dict' so i made a dict that store all numbers that we have passed on , 
but how do we find the number that adds up with one of the numbers stored in the dict , 
we simply loop throw the whole array or list of numbers , in case the number we are at adds up with one of the numbers stored in the dict we return them , else we store that number in the dict and loop again 

in short terms we add a number in the dict and search for another number that if we add them togather would sum up to tha target and we know if they adds up simply by checking if target - nums[i] is in that dict that means that dict[number] + nums[i] = target 

## Complexity
- Time complexity:
O(n) // 55ms

- Space complexity:
17mb

## Code
```
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        storedNumbers = {}
        for i in range(len(nums)) :
            NumberToAdd = target - nums[i]
            if NumberToAdd in storedNumbers : 
                return i , storedNumbers[NumberToAdd]
            storedNumbers[nums[i]] = i
```
