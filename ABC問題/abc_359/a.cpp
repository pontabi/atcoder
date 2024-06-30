#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); ++i)

int main() {
  int n;
  cin >> n;
  vector<string> strs(n);
  rep(i, n) cin >> strs[i];

  int ans = 0;
  rep(i, n) if (strs[i] == "Takahashi") ans++;
  cout << ans << endl;
}
