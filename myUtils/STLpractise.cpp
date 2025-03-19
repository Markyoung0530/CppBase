//
// Created by Administrator on 2025/3/19.
//
#include <iostream>
#include <set>
#include <unordered_set>
#include <vector>

//----------------------------------------------------------------------------------
//public variables
std::vector<int> testVec = {1,1,1,4,56,4,67,87,8,7,6,5,4,2,3,4,5};
//-------------------------------------------------------------


//----------------------------------------------------------------------------------
//utils
//1.print a vector
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
//-------------------------------------------------------------


//----------------------------------------------------------------------------------
//1.Reverse a Vector
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
//Find the max
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
//efficiency need to be improved by using std::remove_if
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
//-------------------------------------------------------------

int main() {
  //test_reverseVector();
  //test_findMax();
  test_removeDuplicatesFromVector();
}