#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); ++i)

int main() {
  int h, w;
  cin >> h >> w;

  vector<vector<char>> arr(h, vector<char>(w, '.'));

  // 各マスの入力を受け取り・二次元配列に格納
  rep(i, h) {
    rep(j, w) cin >> arr[i][j];
  }

  // 一つのセルを囲む八方向のセルを探索するための定数
  // 例えば、arr[-1][-1]は左上のセルを示す
  int dx[8] = {-1, -1, -1, 0, 0, 1, 1, 1};
  int dy[8] = {-1, 0, 1, -1, 1, -1, 0, 1};

  rep(i, h) {
    rep(j, w) {
      if (arr[i][j] == '.') {
        int count = 0;
        rep(k, 8) {
          int ni = i + dx[k];
          int nj = j + dy[k];
          if (ni >= 0 && ni < h && nj >= 0 && nj < w) {
            if (arr[ni][nj] == '#') count++;
          }
        }
        arr[i][j] = to_string(count).at(0);
      }
      cout << arr[i][j];
    }
    cout << endl;
  }
}
