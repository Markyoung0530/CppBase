#include <iostream>
// #include "Log.h"
class Log {
public:
    const static int LogLevelError = 0;
    const static int LogLevelWarning = 1;
    const static int LogLevelInfo = 2;
private:
    int m_LogLevel = LogLevelInfo;
public:
    void SetLevel(int level)
    {
        m_LogLevel = level;
    }
    void Warn(const char* msg) const {
        if (m_LogLevel >= LogLevelWarning){
            std::cout <<"[WARNING]: " << msg << std::endl;
        }
    }
    void Error(const char* msg) const {
        if (m_LogLevel >= LogLevelError) {
            std::cout <<"[ERROR]: " << msg << std::endl;
        }
    }
    void Info(const char* msg) const
    {
        if (m_LogLevel >=LogLevelInfo) {
            std::cout <<"[INFO]: " << msg << std::endl;
        }
    }
};

int hello(int x, int y) {
  return x+y;
};



int main() {
  constexpr Log log;
  int x=0;x++;
  //log.SetLevel(log.LogLevelError);
  log.Warn("Hello!");
  log.Error("Hello!");
  log.Info("Hello!");
  std::cout << x << std::endl;
  std::cin.get() ;
  return 0 ;
}