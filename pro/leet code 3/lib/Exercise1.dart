/* 242. Valid Anagram
Given two strings s and t, return true if t is an
anagram
of s, and false otherwise.
https://leetcode.com/problems/valid-anagram/description/
 */

class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    Map<String, int> charCount = {};

    for (var char in s.split('')) {
      charCount[char] = (charCount[char] ?? 0) + 1;
    }

    for (var char in t.split('')) {
      if (charCount[char] == null || charCount[char]! == 0) {
        return false;
      }
      charCount[char] = charCount[char]! - 1;
    }

    return true;
  }
}

void main() {
  var solution = Solution();
  String param1 = "listen";
  String param2 = "silent";

  var result = solution.isAnagram(param1, param2);
  print(result);
}
