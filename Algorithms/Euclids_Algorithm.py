# Euclid's algorithm.
# Given two positive integers m and n, find their greatest common divisor, that is, the largest positive integer that evenly divides both m and n. 

# 1. [Find remainder.] Divide m by n and let r be the remainder. (We will have 0 <= r < n.)
# 2. [Is it zero?] If r = 0, the algorithm terminates; n is the answer.
# 3. [Reduce.] Set m to n, n to r, and go back to step 1.

def getGreatestCommonDivisor(m, n):
    while True:
        r = m % n # 1. [Find remainder.]

        if r == 0: # 2. [Is it zero?] 
            return n

        m = n # 3. [Reduce.]
        n = r

print(getGreatestCommonDivisor(423354, 4938))