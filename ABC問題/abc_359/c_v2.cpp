#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); ++i)
using ll = long long;

int main() {
  ll sx, sy, tx, ty;
  cin >> sx >> sy >> tx >> ty;
  if ((sx+sy) % 2 == 1) sx--;
  if ((tx+ty) %2 == 1) tx--;

  ll ans;
  ll x = abs(tx-sx);
  ll y = abs(ty-sy);
  if (y > x) ans = y;
  else ans = (x+y)/2;
  cout << ans << endl;
}
