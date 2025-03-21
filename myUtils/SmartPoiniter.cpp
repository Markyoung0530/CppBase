//
// Created by Mark on 2025/3/21.
//
#include <iostream>
#include <string>

class String{
private:
    unsigned int m_Size;
    char* m_Buffer;

public:
    String(const char* string){
        m_Size = strlen(string);
        m_Buffer = new char[m_Size + 1];
        memcpy(m_Buffer, string, m_Size+1);
//        m_Buffer[m_Size] = '\0';
    }

    friend std::ostream& operator<<(std::ostream& stream, const String& string);
};
std::ostream& operator<<(std::ostream& stream, const String& string){
    stream << string.m_Buffer;
    return stream;
}

int main() {
    String s = "chernodfdd";
    std::cout << s << std::endl;
}