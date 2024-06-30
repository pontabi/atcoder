#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); ++i)

int main() {
    int n;
    cin >> n;
    vector<tuple<int, int, int>> cards(n);
    rep(i, n) {
        int a, b;
        cin >> a >> b;
        cards[i] = make_tuple(a, b, i + 1); // カードの値、コスト、インデックスを保存
    }

    // 1つ目の要素で降順にソート
    sort(cards.begin(), cards.end(), [](const auto& a, const auto& b) {
        return get<0>(a) > get<0>(b);
    });

    vector<int> remained_card_index;
    int min_cost = get<1>(cards[0]) + 1; // 最小コストを初期化
    rep(i, n) {
        if (get<1>(cards[i]) < min_cost) {
            min_cost = get<1>(cards[i]);
            remained_card_index.push_back(get<2>(cards[i])); // 条件を満たすカードのインデックスを保存
        }
    }

    cout << remained_card_index.size() << endl;
    sort(remained_card_index.begin(), remained_card_index.end()); // インデックスを昇順にソート
    for (int index : remained_card_index) {
        cout << index << " ";
    }
    cout << endl;

    return 0;
}
