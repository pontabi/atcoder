#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); ++i)

int main() {
  int n, a;
  cin >> n >> a;
  vector<int> times(n);
  rep(i, n) cin >> times[i];

  vector<int> ans;
  int cur_time = 0;
  rep(i, n) {
    int next_time = times[i];
    if (next_time > cur_time) cur_time = next_time;
    cur_time += a;
    ans.push_back(cur_time);
  }
  rep(i, ans.size()) cout << ans[i] << endl;
}
