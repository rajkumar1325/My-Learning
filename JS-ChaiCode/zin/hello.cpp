#include <iostream>
#include <vector>
#include <set>
using namespace std;

vector<vector<int>> functioncall(vector<int> &nums, int target)
{
    vector<vector<int>> result; // stores the final result
    int n = nums.size();
    int total =0;

    for (int i = 0; i < n; i++)
    {
        for (int sec = 0; sec < n - 2; sec++)
        {
            for (int third = 0; third < n - 1; third++)
            {
                for (int fourth = 0; fourth < n; fourth++)
                {
                    total = nums[i] + nums[sec] + nums[third] + nums[fourth];

                    if (total == target){
                        result.push_back({nums[i] + nums[sec] + nums[third] + nums[fourth]});
                    }
                    
                }
            }
        }
    }
    return result;
}



void printMatrix(const vector<vector<int>>& matrix) {
    for (const auto& row : matrix) {
        for (int val : row) {
            cout << val << " ";
        }
        cout << endl;
    }
}




int main()
{
    vector<int> nums = {1, 0, -1, 0, -2, 2};
    
    vector<vector<int>> output = functioncall(nums, 0);
    printMatrix(output); // Proper way to print
    return 0;    
}