#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); ++i)

int main() {
    int n;
    cin >> n;
    vector<int> locs(n), ws(n);
    rep(i, n) cin >> locs[i];
    rep(i, n) cin >> ws[i];

    int ans = 0;
    vector<pair<int, int>> arr;
    rep(i, n) {
        auto it = find_if(arr.begin(), arr.end(), [&](const pair<int, int>& p) { return p.first == locs[i]; });
        if (it == arr.end()) {
            arr.emplace_back(locs[i], ws[i]);
        } else {
            if (it->second >= ws[i]) {
                ans += ws[i];
            } else {
                ans += it->second;
                it->second = ws[i];
            }
        }
    }

    cout << ans << endl;
    return 0;
}
