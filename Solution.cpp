//
// Created by Mark on 2025/3/23.
//
#include <iostream>
#include <unordered_map>
#include <vector>
#include <string>
using namespace sclass Solution{
public:
vector<vector<string>> groupAnagrams(vector<string>& strs) {
    vector<vector<string>> res;
    unordered_map<string, vector<string>> mp;
    for(string& str: strs){
        string key = str;
        sort(key.begin(), key.end());
        mp[key].emplace_back(str);
    }

    for (const auto& pair : mp) {
        res.emplace_back(pair.second);
    }

    return res;
}

};td;



int main() {
    class Solution s;
    vector<string> strs = {"eat", "tea", "tan", "ate", "nat", "bat"};
    string x = strs[0];
    vector<vector<string>> res = s.groupAnagrams(strs);
    //std::cout << x << std::endl;
    return 0;
}