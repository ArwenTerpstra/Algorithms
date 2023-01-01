// Euclid's algorithm.
// Given two positive integers m and n, find their greatest common divisor, that is, the largest positive integer that evenly divides both m and n. 

// 1. [Find remainder.] Divide m by n and let r be the remainder. (We will have 0 <= r < n.)
// 2. [Is it zero?] If r = 0, the algorithm terminates; n is the answer.
// 3. [Reduce.] Set m to n, n to r, and go back to step 1.

public class Euclids_Algorithm {
    public static int getGreatestCommonDivisor(int m, int n) {
        int r;

        while (true) {
            r = m % n; // 1. [Find remainder.]

            if (r == 0) { // 2. [Is it zero?]
                return n;
            }

            m = n; // 3. [Reduce.]
            n = r;
        }
    }

    public static void main(String[] args)
    {
        System.out.println(getGreatestCommonDivisor(423354, 4938));
    }
}