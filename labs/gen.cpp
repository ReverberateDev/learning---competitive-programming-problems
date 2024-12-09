#include "testlib.h"
#include <bits/stdc++.h>
using namespace std;



vector<int> random_array(int size, int min_value, int max_value) {
    vector<int> res(size);
    for (auto& i: res) i = rnd.next(min_value, max_value);
    return res;
}

string random_string(int max_size){
    int size = rnd.next(1, max_size);
    string s = "";
    while(size--){
        s = s + (char)('a' + rnd.next(0, 22));
    }
    return s;
}

int main(int argc, char** argv) {
    registerGen(argc, argv, 1);
    int max_q = opt<int>("max-q");
    int max_slen = opt<int>("max-slen");
    int max_i = opt<int>("max-i");
    int max_j = opt<int>("max-j");

    q = rnd.next(1, max_q);
    cout << q << '\n';
    while(q--){
        int t = rnd.next(1, 2);
        cout << t << " ";
        if(t == 1){
            string s = random_string(max_slen);
            int i = rnd.next(1, i);
            cout << s << " " << i << '\n';
        }
        else{
            int j = rnd.next(1, max_j);
            cout << j << '\n';
        }
    }
}