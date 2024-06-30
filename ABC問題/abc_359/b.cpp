#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); ++i)

int main() {
  int n;
  cin >> n;
  vector<int> a(n*2);
  int ans = 0;
  rep(i, n*2) cin >> a[i];
  rep(i, n*2) if (a[i] == a[i+2]) ans++;
  cout << ans << endl;
}
