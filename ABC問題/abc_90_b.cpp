#include <bits/stdc++.h>
using namespace std;

int main() {
  int a, b;
  cin >> a >> b;

  int count = 0;
  for (int i = a; i <= b; i++)
  {
    string str_i = to_string(i);
    string str_reversed_i = to_string(i);
    reverse(str_reversed_i.begin(), str_reversed_i.end());
    if (str_i == str_reversed_i) count++;
  }

  cout << count << endl;

}
