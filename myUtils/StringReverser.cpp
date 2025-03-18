//
// Created by 张婉儿 on 2025/3/18.
//
#include "StringReverser.h"

std::string myUtils::StringReverser::reverse(const std::string& str) {
  std::string reversed = str;
  int len = str.size();
  for (int i = 0; i < len / 2; i++) {
    std::swap(reversed[i],reversed[len - 1 -i]);
  }
  return reversed;
};
