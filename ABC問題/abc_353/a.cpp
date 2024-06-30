#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); ++i)

int main() {
  int n;
  cin >> n;
  vector<int> hs(n);
  rep(i, n) cin >> hs[i];

  int ans = -1;
  rep(i, n) {
    if (hs[0] < hs[i]) {
      ans = i + 1;
      break;
    }
  }
  cout << ans << endl;
}
