void main() {
  print(RomanToInt("MCMXCIV"));
}

int RomanToInt(String s) {
  Map<String, int> dic = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  };

  int ans = 0;

  for (int i = 0; i < s.length; i++) {
    if (i != s.length - 1 && dic[s[i]]! < dic[s[i + 1]]!) {
      ans += dic[s[i + 1]]! - dic[s[i]]!;
      i++;
    } else {
      ans += dic[s[i]]!;
    }
  }
  return ans;
}
