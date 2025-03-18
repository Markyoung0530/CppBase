#include <iostream>

class Entity1 {
public:
  float x=0,y=0;
  // 构造函数
   Entity1() {
     x = 0.0f;y = 0.0f;
     std::cout << "Created Entity" << std::endl;
   }
   //构造函数重载
   Entity1(float a, float b) {
     x = a;y = b;
   }
   //Destructor析构函数
   ~Entity1() {
     std::cout << "Destroyed Entity" << std::endl;
   }

  void Print() const {
    std::cout << x <<","<< y << std::endl;
  }
};

void Function() {
  const Entity1 e;
  e.Print();
}

//---------------------------------------------------
//Practise about inherit
class Entity {
public:
  float X,Y;

  Entity() {//构造函数
    X = 0.0f;Y = 0.0f;
  }

  void Move(const float xa, const float ya) {
    X+=xa;Y+=ya;
  }
};

class Player : public Entity {
  const char* Name;

public:
  Player() {
    Name = "defaultName";
  }

  void PrintName() {
    std::cout << Name << std::endl;
  }
};
//---------------------------------------------------


int main() {
  Player p;
  p.PrintName();
  std::cout << p.X <<","<< p.Y << std::endl;
  p.Move(0.1f,1.0f);
  std::cout << p.X <<","<< p.Y << std::endl;
  std::cin.get();
  return 0;
}