-- Euclid's algorithm.
-- Given two positive integers m and n, find their greatest common divisor, that is, the largest positive integer that evenly divides both m and n. 

-- 1. [Remainder m/n.] Divide m by n and let m be the remainder.
-- 2. [Is it zero?] If m = 0, the algorithm terminates; n is the answer.
-- 3. [Remainder n/m.] Divide m by n and let m be the remainder.
-- 4. [Is it zero?] If n = 0, the algorithm terminates; m is the answer; otherwise go back to step 1.

function getGreatestCommonDivisor(m, n)
    while (true) do
        m = m % n -- 1. [Remainder m/n.]
        if (m == 0) then -- 2. [Is it zero?]
            return n;
        end

        n = n % m -- 3. [Remainder n/m.]
        if (n == 0) then -- 4. [Is it zero?]
            return m;
        end
    end
end

-- Test if it works
print(getGreatestCommonDivisor(2166, 6099))