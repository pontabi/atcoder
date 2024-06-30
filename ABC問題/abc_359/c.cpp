#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); ++i)

int main() {
  long long sx, sy, tx, ty;
  cin >> sx >> sy >> tx >> ty;
  long long y_dif, x_dif;
  y_dif = abs(ty - sy);
  x_dif = abs(tx - sx);
  long long xe, xo, ye, yo;
  xe = x_dif / 2 + (x_dif % 2 != 0 || sx % 2 == 0 ? 1 : 0);
  xo = x_dif / 2 + (x_dif % 2 != 0 || sx % 2 != 0 ? 1 : 0);
  ye = y_dif / 2 + (y_dif % 2 != 0 || sy % 2 == 0 ? 1 : 0);
  yo = y_dif / 2 + (y_dif % 2 != 0 || sy % 2 != 0 ? 1 : 0);

  long long x_fee;
  // xが負の方向に進む
  if (sx > tx) {
    x_fee = x_dif - min(xe, yo) - min(xo, ye);
  } else {
    x_fee = x_dif - min(xe, ye) - min(xo, yo);
  }

  if (x_fee < 0) x_fee = 0;

  cout << (x_fee + y_dif) << endl;
}
