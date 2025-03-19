//
// Created by Administrator on 2025/3/19.
//
#include <array>
#include <iostream>
#include <map>
#include <set>
#include <unordered_set>
#include <vector>

//----------------------------------------------------------------------------------
//public variables
std::vector<int> testVec = {1,1,1,4,56,4,67,87,8,7,6,5,4,2,3,4,5};
std::array<int, 20> testArr = {1,1,3,4,5,5,6,3,4,3,4,5,5,5,6,7,8,9,8,7};
//-------------------------------------------------------------


//----------------------------------------------------------------------------------
//[Utils-1]print a vector
void printVec_int(const std::vector<int>& vec) {
  const size_t len = vec.size();
  std::cout << "<";
  for (int i = 0;i<len;i++) {
    if (i!=len-1) {
      std::cout << vec[i] << ",";
    }
    else {
      std::cout << vec[i]<< ">";
    }
  }
}
//[Utils-2]print a map<int, size_t>
void printMap_int_size_t(const std::map<int, size_t>& mp) {
  std::cout << "{";
  for (auto iter = mp.begin(); iter != mp.end();++iter) {
    std::cout << "<" << iter->first << "," << iter->second << ">";
    if (iter != --mp.end()) {
      std::cout << ", ";
    }
  }
  std::cout << "}" << std::endl;
}
//-------------------------------------------------------------


//----------------------------------------------------------------------------------
//1.[Vector]Reverse a Vector
std::vector<int> reverseVector(std::vector<int> & vec) {
  const size_t len = vec.size();
  for (int i = 0;i<len;i++) {
    std::swap(vec[i], vec[len-1-i]);
  }
  return vec;
}
void test_reverseVector() {
  printVec_int(reverseVector(testVec));
}
//-------------------------------------------------------------

//----------------------------------------------------------------------------------
//2.[vector]Find the max
int findMax(const std::vector<int>& vec) {
  int max = INT_MIN;
  for (const int num : vec) {
    if (num > max){
      max = num;
    }
  }
  return max;
}
void test_findMax() {
  std::cout << findMax(testVec) << std::endl;
}
//-------------------------------------------------------------


//----------------------------------------------------------------------------------
//3.[vector]efficiency need to be improved by using std::remove_if
std::vector<int>& removeDuplicatesFromVector(std::vector<int>& vec) {
  std::unordered_set<int> tempSet;
  for (auto ptr = vec.begin(); ptr!=vec.end();) {
    if (tempSet.count(*ptr)==0) {
      tempSet.insert(*ptr);
      ++ptr;
    }
    else {
      ptr = vec.erase(ptr);
    }
  }
  return vec;
}

void test_removeDuplicatesFromVector() {
  printVec_int(removeDuplicatesFromVector(testVec));
}
//-------------------------------------------------------------


//----------------------------------------------------------------------------------
//4.[array]find the first index of given target(if any),return -1 if not
template <std::size_t N>
int findIndex(const std::array<int, N>& arr, int target) {
  int index = 0;
  for (size_t len = arr.size(); index < len; index++) {
    if (arr[index] == target) {
      return index;
    }
    ++index;
  }
  return -1;
}

void test_findIndex() {
  std::cout << findIndex(testArr, 1);
};
//-------------------------------------------------------------


//----------------------------------------------------------------------------------
//5.[array]calculate the frequency of every element
template <size_t N>
std::map<int, std::size_t> countFrequency(const std::array<int, N>& arr) {
  std::map<int, std::size_t> res;
  for (int num : arr) {
    if (res.count(num) == 0) {
      res.insert(std::make_pair(num, 1));
    }
    else {
      res[num]+=1;
    }
  }
  return res;
};

void test_countFrequency() {
  printMap_int_size_t(countFrequency(testArr));
}
//-------------------------------------------------------------

//----------------------------------------------------------------------------------
//6.[]
//-------------------------------------------------------------

//----------------------------------------------------------------------------------
//-------------------------------------------------------------

//----------------------------------------------------------------------------------
//-------------------------------------------------------------

//----------------------------------------------------------------------------------
//-------------------------------------------------------------

//----------------------------------------------------------------------------------
//-------------------------------------------------------------
int main() {
  //test_reverseVector();
  //test_findMax();
  //test_removeDuplicatesFromVector();
  //test_findIndex();
  test_countFrequency();
}