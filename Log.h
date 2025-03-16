//
// Created by 张婉儿 on 2025/3/16.
//

#pragma once

class Log {
public:
  const static int LogLevelError = 0;
  const static int LogLevelWarning = 1;
  const static int LogLevelInfo = 2;
public:
  void SetLevel(int level);
  void Warn(const char* msg) const;
  void Error(const char* msg) const;
  void Info(const char* msg) const;
};


