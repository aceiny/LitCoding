class Solution:
    def climbStairs(self, n: int) -> int:
        if n <= 1:
            return 1
        array = [0] * (n + 1)
        array[0] = 1
        array[1] = 1
        
        for i in range(2, n + 1):
            array[i] = array[i - 1] + array[i - 2]
        
        return array[n]