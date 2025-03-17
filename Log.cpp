#include "Log.h"
#include <iostream>

void Log::SetLevel(const int level) {
  m_LogLevel = level;
}

void Log::Warn(const char* msg) const {
  if (m_LogLevel >= Log::LogLevelWarning) {
    std::cout << "[WARNING]: " << msg << std::endl;
  }
}

void Log::Error(const char* msg) const {
  if (m_LogLevel >= Log::LogLevelError) {
    std::cout << "[ERROR]: " << msg << std::endl;
  }
}

void Log::Info(const char* msg) const {
  if (m_LogLevel >= Log::LogLevelInfo) {
    std::cout << "[INFO]: " << msg << std::endl;
  }
}

int main() {
  Log::GetInstance().SetLevel(Log::LogLevelInfo);
  Log::GetInstance().Warn("Hello!");
  Log::GetInstance().Error("Hello!");
  Log::GetInstance().Info("Hello!");
  std::cin.get();
  return 0;
}