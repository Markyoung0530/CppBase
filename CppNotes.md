#  1.static

# 2. const

## (1)const variable

```c++
const int MAXAGE = 90//变量不可改变
```

## (2)const pointer

```c++
const int* ptr = new int;//不能改变*ptr，可以改变ptr的指向
*ptr = 2//错误！
//--------------------------------------------------------
int* const ptr = new int;//不能改变ptr的指向，可以改变*ptr
*ptr = 2//可以
ptr = nullptr;//错误！
//---------------------------------------------------------
const int* const ptr = new int;//既不能改变*ptr,又不能改变ptr的指向
```

## (3)method const

```c++
class Entity{
private:
  int m_X,m_Y;
  mutable int var;//mutable意味着这个变量可以被修改
public:
  int GetX() const{//这个方法承诺不会修改实际的类, 只读不写
    m_X = 2;//错误！
    var = 2;//可以！因为有mutable,即使在const方法中
    return m_X;
  }
}
```

# 3.构造函数成员初始化列表

为了简洁, 代码风格

```c++
class Entity{
private:
  std::string m_Name;
  int x,y,z;
public:
  Entity()
    : m_Name("Unknown"), x(0), y(0), z(0)//成员初始化列表
  {
    //other code
  }
  Entity(std::string& name)
    : m_Name(name)
  {
    //other code
  }
}
```

