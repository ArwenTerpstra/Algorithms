// Euclid's algorithm.
// Given two positive integers m and n, find their greatest common divisor, that is, the largest positive integer that evenly divides both m and n. 

// 1. [Find remainder.] Divide m by n and let r be the remainder. (We will have 0 <= r < n.)
// 2. [Is it zero?] If r = 0, the algorithm terminates; n is the answer.
// 3. [Reduce.] Set m to n, n to r, and go back to step 1.

fn get_greatest_common_divisor(mut m: u128, mut n: u128) -> u128 {
    loop {
        let r = m % n;

        if r == 0 {
            return n;
        }

        m = n;
        n = r;
    }
}

fn main() {
    println!("{}", get_greatest_common_divisor(423354, 4938));
}