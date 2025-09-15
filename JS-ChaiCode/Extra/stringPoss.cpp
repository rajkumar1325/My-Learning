#include <iostream>
#include <string>
using namespace std;

int main(){
    string name = "Raj";
    int n = name.size();

    string result ="";

    int count =0;
    for(int i=0; i<n; i++){
        for (int j=i; j<n; j++)
        {
            result += name.substr(i, j-i+1);
            result += " ";
            count++;
        }
        
    }
    cout<<count;

    for(auto n : result){
        cout<<n;
    }
}