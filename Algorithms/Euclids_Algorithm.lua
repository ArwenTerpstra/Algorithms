-- Euclid's algorithm.
-- Given two positive integers m and n, find their greatest common divisor, that is, the largest positive integer that evenly divides both m and n. 

-- 1. [Find remainder.] Divide m by n and let r be the remainder. (We will have 0 <= r < n.)
-- 2. [Is it zero?] If r = 0, the algorithm terminates; n is the answer.
-- 3. [Reduce.] Set m to n, n to r, and go back to step 1.

function getGreatestCommonDivisor(m, n)
    while (true) do
        r = m % n -- 1. [Find remainder.]

        if (r == 0) then -- 2. [Is it zero?]
            return n;
        end
        
        m = n -- 3. [Reduce.]
        n = r
    end
end

print(getGreatestCommonDivisor(423354, 4938))