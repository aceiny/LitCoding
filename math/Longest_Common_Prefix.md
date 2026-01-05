    
# Longest Common Prefix
Longest Common Prefix is a problem where you Write a function to find the longest common prefix string amongst an array of strings.

## how did i solved it
i created a variable s that hold's the first string of the array then i looped throw the whole array , as i did that i checked the same first letters between s and the word and assigned that to s 

## Complexity
- Time complexity:
O(n) // 41ms

- Space complexity:
16mb

## Code
```
class Solution:
    def longest_common_prefix(self , word1, word2):
        prefix = []
        for char1, char2 in zip(word1, word2):
            if char1 == char2:
                prefix.append(char1)
            else:
                break
        return ''.join(prefix)

    def longestCommonPrefix(self, strs) -> str:
        s = strs[0]
        for word in strs[1:] :
            s = self.longest_common_prefix(s, word)
        return s
```