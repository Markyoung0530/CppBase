#include <iostream>
#include "Log.h"
// class Log {
// public:
//     const static int LogLevelError = 0;
//     const static int LogLevelWarning = 1;
//     const static int LogLevelInfo = 2;
// private:
//     int m_LogLevel = LogLevelInfo;
// public:
//     void SetLevel(int level)
//     {
//         m_LogLevel = level;
//     }
//     void Warn(const char* msg) const {
//         if (m_LogLevel >= LogLevelWarning){
//             std::cout <<"[WARNING]: " << msg << std::endl;
//         }
//     }
//     void Error(const char* msg) const {
//         if (m_LogLevel >= LogLevelError) {
//             std::cout <<"[ERROR]: " << msg << std::endl;
//         }
//     }
//     void Info(const char* msg) const
//     {
//         if (m_LogLevel >=LogLevelInfo) {
//             std::cout <<"[INFO]: " << msg << std::endl;
//         }
//     }
// };

int main() {
    // char a;//1byte
    // short b;//2bytes
    // int c;//4bytes
    // unsigned int d;//4bytes
    // long e;//8bytes
    // long long f;//8bytes
    // float g=5.5f;//4bytes
    // double h=5.2;//8bytes
    // char* buffer = new char[8];//在堆上申请了8bytes内存

  const Log log;
    //log.SetLevel(log.LogLevelError);
    log.Warn("Hello!");
    log.Error("Hello!");
    log.Info("Hello!");
    std::cin.get() ;
    return 0 ;
}