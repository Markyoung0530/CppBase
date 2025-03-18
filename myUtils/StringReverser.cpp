//
// Created by 张婉儿 on 2025/3/18.
//
#include "StringReverser.h"

std::string myUtils::StringReverser::reverse(const std::string& str) {
  std::string reversed = str;
  const size_t len = str.size();
  char * ptr1 = &reversed[0];
  char* ptr2 = &reversed[len-1];
  while (ptr1 < ptr2) {
    const char temp = *ptr1;
    *ptr1 = *ptr2;
    *ptr2 = temp;
    ptr1++;
    ptr2--;
  }
  return reversed;
};
