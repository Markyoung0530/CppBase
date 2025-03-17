#include <iostream>

class Entity {
public:
  float x,y;
  //构造函数
  Entity() {
    x = 0.0f;y = 0.0f;
    std::cout << "Created Entity" << std::endl;
  }
  //构造函数重载
  Entity(float a, float b) {
    x = a;y = b;
  }
  //Destructor析构函数
  ~Entity() {
    std::cout << "Destroyed Entity" << std::endl;
  }

  void Print() const {
    std::cout << x <<","<< y << std::endl;
  }
};

void Function() {
  Entity e;
  e.Print();
}

int main() {
  std::cout << "main!!!" <<std::endl;
  Function();
  std::cin.get();
  return 0;
}