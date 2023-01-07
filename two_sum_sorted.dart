void main() {
  print(Solution().twoSum([2, 7, 11, 15], 9));
}

class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    int a_pointer = 0;
    int b_pointer = numbers.length - 1;

    while (a_pointer < b_pointer) {
      int sum = numbers[a_pointer] + numbers[b_pointer];
      if (sum > target) {
        b_pointer--;
      } else if (sum < target) {
        a_pointer++;
      } else {
        return [a_pointer + 1, b_pointer + 1];
      }
    }
    return [a_pointer + 1, b_pointer + 1];
  }
}
