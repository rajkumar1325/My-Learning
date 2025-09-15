#include<iostream>
#include<stack>
using namespace std;

class Node{
    public:
        int value;
        Node *next;

    Node(int val){
        value = val;
        next = NULL;
    }

};

// temp-next = head;
// head = temp;

int main(){

    Node *head= NULL;
    Node *tail = NULL;
    for (int  i = 0; i < 10; i++)
    {
        // create a temp node
        Node *temp = new Node(i);

        temp->next = head;
        head = temp;
        
    }

    Node *currnt = head;

    while(currnt !=NULL){
        cout<<currnt->value<< " ";
        currnt = currnt->next;
    }
    
}