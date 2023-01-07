void main() {
  print(Solution().hammingDistance(1, 4));
}

class Solution {
  int hammingDistance(int x, int y) {
    final xResult = dec2bin(x).split('');
    final yResult = dec2bin(y).split('');
    int answer = 0;
    balanceList(xResult, yResult);

    while (xResult.length != yResult.length) {
      balanceList(xResult, yResult);
    }
    for (var i = 0; i < xResult.length; i++) {
      if (xResult[i] != yResult[i]) {
        answer += 1;
      }
    }
    return answer;
  }

  void balanceList(List<String> xResult, List<String> yResult) {
    if (xResult.length > yResult.length) {
      for (int i = 0; i <= xResult.length - yResult.length; i++) {
        yResult.insert(0, '0');
      }
    } else if (xResult.length < yResult.length) {
      for (int i = 0; i <= yResult.length - xResult.length; i++) {
        xResult.insert(0, '0');
      }
    }
  }

  String dec2bin(int dec) {
    var bin = '';
    while (dec > 0) {
      bin = (dec % 2 == 0 ? '0' : '1') + bin;
      dec ~/= 2;
    }
    return bin;
  }
}
