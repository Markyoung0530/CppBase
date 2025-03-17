#pragma once

class Log {
private:
  int m_LogLevel = LogLevelInfo;
  Log() = default; // 私有构造函数

public:
  static const int LogLevelError = 0;
  static const int LogLevelWarning = 1;
  static const int LogLevelInfo = 2;

  static Log& GetInstance() {
    static Log instance;
    return instance;
  }

  void SetLevel(int level);
  void Warn(const char* msg) const;
  void Error(const char* msg) const;
  void Info(const char* msg) const;
};