setup4abc() {
  if [ -e your_path_to_abc_dir ]; then
    cd your_path_to_abc_dir
    if [ ! -d abc_$1 ]; then
      mkdir abc_$1
      cd abc_$1
      mkdir build
      touch {a..c}.cpp

      for file in {a..c}.cpp; do
        cat <<EOF > "$file"
#include <bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); ++i)

int main() {

}
EOF
      done
    fi
    cd abc_$1
  fi
}
