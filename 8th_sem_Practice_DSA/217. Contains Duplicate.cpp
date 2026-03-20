///WHETHER THE ARRAY CONTAINS DUPLICATE VALUES OR NOT !
#include <bits/stdc++.h>
using namespace std;

// 1 22 3 12 1 23

int main() {
    vector<int> arr;
    cout<<"Enter your number ";
    for(int i=0; i<5; i++){
        int x;
        cin>>x;
       arr.push_back(x);
    }
    
    
    //lets code the logic
    unordered_set<int> seen;
    for(int i : arr){
        if(seen.count(i) >0){
            cout<< "yes";
            return;
        }
        seen.insert(i);
    }
    cout<< "no";
    

    return 0;
}
