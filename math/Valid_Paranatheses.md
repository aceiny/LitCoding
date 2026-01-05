    
# Valid Parantheses

Valid Parantheses is a leet code problem where you are Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

-Open brackets must be closed by the same type of brackets.
-Open brackets must be closed in the correct order.
-Every close bracket has a corresponding open bracket of the same type.

## how did i solved it
this one a lil tricky , i used a  hashmap to link each opening with its closing , and as i maped throw the string i appended every opening , while i was checking if i reached a closing , when we reach a closing the last elemnent in the array must be its openning , 
the tricky thing here is that you must return True only if the array is empty at the end of the operation

## Complexity
- Time complexity:
O(n) // 34ms

- Space complexity:
16mb

## Code
```
def isValid(self, s: str) -> bool:
    l = []
    hashMap = {
        '(' : ')',
        '{' : '}',
        '[' : ']'
        }
    for i in s : 
        if i in "({[" : 
            l.append(i)
        elif l and i in ")}]" and hashMap[l[-1]] == i : 
            l.pop()
        else : 
            return False
                
    return True if not l else False
```