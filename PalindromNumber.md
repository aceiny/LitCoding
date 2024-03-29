    
# Palindrom number
palindrom number is a problem where you check if a number in reverse is the same as its original state

## how did i solved it
this one is pretty sample easy instead of dealing with numbers we deal with them as string 
now it become pretty simple we just reverse the string and check if its equal to its no reversed state

## Complexity
- Time complexity:
O(n) // 45ms

- Space complexity:
17mb

## Code
```
class Solution:
    def isPalindrome(self, x: int) -> bool:
        return str(x)[::-1] == str(x)
```