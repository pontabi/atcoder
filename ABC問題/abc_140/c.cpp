#include <bits/stdc++.h>
#define rep(i, s, n) for(int i=(s); i<(n); ++i)
using namespace std;

int main() {
  int n, b[101];
  cin >> n;
  rep(i, 1, n) cin >> b[i]

  int ans = 0;
  ans += b[1];
  rep(i, 2, n) ans += min(b[i], b[i-1]);
  ans += b[n-1];
  cout << ans << endl;
}
