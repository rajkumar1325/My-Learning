#include <iostream>
#include <vector>
#include <algorithm>
#include<stack>

using namespace std;

// WE HAVE TO GENERATE VALID PARENTHESIS.
void isValid(char ch){
    stack<char> st;
    if(ch == '('){
        // simply push
        st.push(ch);
    }
    else if(ch ==  ')' && !st.empty() ){
        while (st.top() == '(' || !st.empty()){
            st.pop();
        }
        
    }
}

int main(){

}