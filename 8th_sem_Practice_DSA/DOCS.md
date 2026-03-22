# ALL FORMULAS

## Day 1 - 217. Contains Duplicate
- The Trick: Use an unordered_set to track numbers as I loop; if seen.count(num) is true, return true.


## Day 2 - 242. Valid Anagram
- O(nlogn)  --> sort both the string and check whether it have the same character or not!
- O(n) --> The Trick: Use an array of size 26 to count character frequencies; increment for string s, decrement for string t, and check if all values equal 0.

