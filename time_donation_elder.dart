int elderAge(int m, int n, int l, int t) {
  // Arithmetic series sum
  int s(int a1, int a2) {
    return a1 > a2 ? 0 : (a1 + a2) * (a2 - a1 + 1) ~/ 2;
  }

  // Edge till 2^k
  int edge(int x) {
    int ret = 1;
    while (ret < x) ret *= 2;
    return ret;
  }

  // Ensure m is the smaller dimension
  if (m > n) {
    int temp = m;
    m = n;
    n = temp;
  }

  int em = edge(m);
  int en = edge(n);

  // Base cases
  if (m == 0 || l >= en - 1) return 0;

  // When em == en (m and n are close in size)
  if (em == en) {
    return (s(0, em - l - 1) * (m + n - em) + elderAge(em - m, en - n, l, t)) % t;
  } else {
    // When em != en
    em = en ~/ 2;

    int goalS1 = s(0, en - l - 1) * m;
    int s1Small = (en - n) * s(em > l ? em - l : 0, en - l - 1);

    int small;
    if (l <= em) {
      // No +0s, true fans
      small = elderAge(em - m, en - n, 0, t) + (em - l) * (em - m) * (en - n);
    } else {
      // With some +0s, fake fans
      small = elderAge(em - m, en - n, l - em, t);
    }

    return (goalS1 - s1Small + small) % t;
  }
}



void main(){
  print(elderAge(115,510,291,255));
}