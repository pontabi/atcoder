#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); ++i)

int main() {
  int n, m, k;
  cin >> n >> m >> k;
  vector<int> as(m);
  vector<char> r(m);

  rep(i, m) {
    int c;
    cin >> c;
    rep(j, c) {
      int a;
      cin >> a;
      a--;
      as[i] |= 1<<a;
    }
    cin >> r[i];
  }

  int ans = 0;
  rep(s, 1<<n) {
    bool ok = true;
    rep(i, m) {
      int num = __builtin_popcount(as[i]&s);
      if((num >= k) != (r[i] == 'o')) ok = false;
    }
    if(ok) ans++;
  }
  cout << ans << endl;
  return 0;
}
