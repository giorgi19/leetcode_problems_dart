void main() {
  print(Solution().generate(5));
}

class Solution {
  List<List<int>> generate(int numRows) {
    List<List<int>> triangle = [];
    List<int> first_row = [];
    if (numRows == 0) return triangle;
    first_row.add(1);
    triangle.add(first_row);
    for (int i = 1; i < numRows; i++) {
      List<int> prev_row = triangle[i - 1];
      List<int> row = [];
      row.add(1);
      for (int j = 1; j < i; j++) {
        row.add(prev_row[j] + prev_row[j - 1]);
      }
      row.add(1);
      triangle.add(row);
    }
    return triangle;
  }
}
