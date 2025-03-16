//
// Created by 张婉儿 on 2025/3/16.
//
#include "Log.h"
#include <iostream>
private:
int m_LogLevel = Log::LogLevelInfo;
void SetLevel(int level)
{
  Log::m_LogLevel = level;
}
void Warn(const char* msg) {
  if (Log::m_LogLevel >= Log::LogLevelWarning){
    std::cout <<"[WARNING]: " << msg << std::endl;
  }
}
void Error(const char* msg) {
  if (Log::m_LogLevel >= Log::LogLevelError) {
    std::cout <<"[ERROR]: " << msg << std::endl;
  }
}
void Info(const char* msg) {
  if (Log::m_LogLevel >= Log::LogLevelInfo) {
    std::cout <<"[INFO]: " << msg << std::endl;
  }
}